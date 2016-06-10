## Laravel 5 example ##

**Laravel 5 example** is a sample application 

### Installation ###

* `git clone https://github.com/bestmomo/laravel5-example.git projectname`
* `cd projectname`
* `composer install`

* Create a database and inform *.env*.  You have to deploy news_publishing_portail.sql
* Inform *config/mail.php* for email sends
  Open : mail\config.php and change : driver, host, port, from, encryption, username, password for your mailing address.
	   These elements are set as follow in the project (concerning my mailing configuration)
	    - 'driver' => 'smtp',
		- 'host' => 'smtp.gmail.com',
		- 'port' => 587,
		- 'from' => ['address' => 'jskameni1@gmail.com', 'name' => 'Jaures KAMENI'],
		- 'encryption' => 'tls',
		- 'username' => 'jskameni1@gmail.com',
		- 'password' => 'kahojast1234',
* `php artisan serve` to start the app on http://localhost:8000/

### Include ###

-	Bootstrap lib
-	Blade
-	Eloquent
-	vsmoraes/pdf-laravel5
-	RoumenDamianoff/laravel-feed

### Features ###

-	News List consulting
-	PDF Download
-	Registration
-	Login
-	Forgotten password
-	Personal News list consulting
-	Add News
-	Delete News 
-	RSS feed


### Packages included ###

* laravelcollective/html

### Tricks ###

To test application the database has  the users :

* User : email = jskameni1@gmail.com, password = eeeeeeee
