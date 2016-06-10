<?php

Route::group(['middleware' => ['web']], function () {

	// Home
	Route::get('/', [
		'uses' => 'HomeController@index', 
		'as' => 'home'
	]);
	Route::get('language/{lang}', 'HomeController@language')->where('lang', '[A-Za-z_-]+');


	// Admin
	Route::get('admin', [
		'uses' => 'AdminController@admin',
		'as' => 'admin',
		'middleware' => 'admin'
	]);

	Route::get('medias', [
		'uses' => 'AdminController@filemanager',
		'as' => 'medias',
		'middleware' => 'redac'
	]);
	
	
	// Blog
	Route::get('news', 'BlogController@indexFront');
	Route::get('mynews', 'BlogController@indexMyFront');
	Route::post('mynews/create', 'BlogController@postCreate');
	Route::get('mynews/create', 'BlogController@create');
	Route::get('mynews/destroy/{id}', 'BlogController@destroy');
	Route::get('mynews/{id}', 'BlogController@show');
	Route::get('outputpdf/{id}', 'BlogController@outputPdf');
	


	Route::put('postseen/{id}', 'BlogController@updateSeen');
	Route::put('postactive/{id}', 'BlogController@updateActive');

	Route::resource('blog', 'BlogController');

	// Comment
	Route::resource('comment', 'CommentController', [
		'except' => ['create', 'show']
	]);

	Route::put('commentseen/{id}', 'CommentController@updateSeen');
	Route::put('uservalid/{id}', 'CommentController@valid');


	// User
	Route::get('user/sort/{role}', 'UserController@indexSort');

	Route::get('user/roles', 'UserController@getRoles');
	Route::post('user/roles', 'UserController@postRoles');

	Route::put('userseen/{user}', 'UserController@updateSeen');

	Route::resource('user', 'UserController');

	// Authentication routes...
	Route::get('auth/login', 'Auth\AuthController@getLogin');
	Route::post('auth/login', 'Auth\AuthController@postLogin');
	Route::get('auth/logout', 'Auth\AuthController@getLogout');
	Route::get('auth/confirm/{token}', 'Auth\AuthController@getConfirm');
	

	// Resend routes...
	Route::get('auth/resend', 'Auth\AuthController@getResend');

	// Registration routes...
	Route::get('auth/register', 'Auth\AuthController@getRegister');
	Route::post('auth/register', 'Auth\AuthController@postRegister');

	// Password reset link request routes...
	Route::get('password/email', 'Auth\PasswordController@getEmail');
	Route::post('password/email', 'Auth\PasswordController@postEmail');

	// Password reset routes...
	Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
	Route::post('password/reset', 'Auth\PasswordController@postReset');
	
	//Feed
	Route::get('feed', function(){

    // create new feed
    $feed = App::make("feed");

    // multiple feeds are supported
    // if you are using caching you should set different cache keys for your feeds

    // cache the feed for 60 minutes (second parameter is optional)
    $feed->setCache(60, 'laravelFeedKey');

    // check if there is cached feed and build new only if is not
    if (!$feed->isCached())
    {
       // creating rss feed with our most recent 20 posts
       $posts = \DB::table('posts')->orderBy('created_at', 'desc')->take(10)->get();

       // set your feed's title, description, link, pubdate and language
       $feed->title = 'Feed News publishing portal';
       $feed->description = 'Feed News publishing portal';
       $feed->logo = 'https://mspub.blogs.pace.edu/files/2012/10/InTheNews-LOGO-300x204.png';
       $feed->link = url('feed');
       $feed->setDateFormat('datetime'); // 'datetime', 'timestamp' or 'carbon'
       $feed->pubdate = $posts[0]->created_at;
       $feed->lang = 'en';
       $feed->setShortening(true); // true or false
       $feed->setTextLimit(100); // maximum length of description text

       foreach ($posts as $post)
       {
           // set item's title, author, url, pubdate, description, content, enclosure (optional)*
           $feed->add($post->title, $post->user_id, '', $post->created_at, $post->content, $post->content);
       }

    }

    // first param is the feed format
    // optional: second param is cache duration (value of 0 turns off caching)
    // optional: you can set custom cache key with 3rd param as string
    return $feed->render('atom');

    // to return your feed as a string set second param to -1
    // $xml = $feed->render('atom', -1);

});

});