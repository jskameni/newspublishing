<?php namespace App\Http\Controllers;

use Illuminate\Contracts\Auth\Guard;
use Illuminate\Http\Request;
use App\Http\Requests\NewsRequest;
use App\Repositories\BlogRepository;
use App\Repositories\UserRepository;
use Vsmoraes\Pdf\Pdf;

class BlogController extends Controller {

	/**
	 * The BlogRepository instance.
	 *
	 * @var App\Repositories\BlogRepository
	 */
	protected $blog_gestion;

	/**
	 * The UserRepository instance.
	 *
	 * @var App\Repositories\UserRepository
	 */
	protected $user_gestion;

	/**
	 * The pagination number.
	 *
	 * @var int
	 */
	protected $nbrPages;
	
	/**
	 * The element to generate pdf
	 *
	 * @var int
	 */
	private $pdf;

	/**
	 * Create a new BlogController instance.
	 *
	 * @param  App\Repositories\BlogRepository $blog_gestion
	 * @param  App\Repositories\UserRepository $user_gestion
	 * @param  Vsmoraes\Pdf\Pdf $pdf
	 * @return void
	*/
	public function __construct(
		BlogRepository $blog_gestion,
		UserRepository $user_gestion,
		Pdf $pdf)
	{
		$this->user_gestion = $user_gestion;
		$this->blog_gestion = $blog_gestion;
		$this->nbrPages = 10;

		$this->middleware('redac', ['except' => ['indexFront', 'show', 'tag', 'search','outputPdf']]);
		$this->middleware('admin', ['only' => 'updateSeen']);
		$this->middleware('ajax', ['only' => ['updateSeen', 'updateActive']]);
		$this->pdf = $pdf;
	}	

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function indexFront()
	{
		$posts = $this->blog_gestion->indexFront($this->nbrPages);
		$links = $posts->render();

		return view('front.blog.index', compact('posts', 'links'));
	}
	
	/**
	 * Display a listing of the resource for a user.
	 *
	 * @return Response
	 */
	public function indexMyFront(Request $request)
	{
		$posts = $this->blog_gestion->indexMyFront($this->nbrPages, $request->user()->id);
		$links = $posts->render();

		return view('front.blog.myindex', compact('posts', 'links'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$url = config('medias.url');
		
		return view('front.blog.create');
	}
	
	
	/**
	 * Post the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function postCreate(NewsRequest $request)
	{
			$image = $request->file('image');

			if($image->isValid())
			{
				$chemin = config('filemanager.folder_path');

				$extension = $image->getClientOriginalExtension();

				do {
					$nom = str_random(10) . '.' . $extension;
				} while(file_exists($chemin . '/' . $nom));

				if($image->move($chemin, $nom)) {
					//return view('photo_ok');
				}
				
				$result = $this->blog_gestion->store($request->all(), $request->user()->id, '/'.$chemin . $nom);
				 
				return redirect('mynews')->with('ok', trans('back/blog.stored'));
			}
			return redirect('mynews')
			->with('error','Wrong image');
	}
	

	/**
	 * Display the specified resource.
	 * 
	 * @param  string $id
	 * @return Response
	 */
	public function show($id)
	{
		
		$post = $this->blog_gestion->getById($id);

		return view('front.blog.show', compact('post'));
	}
	
	/**
	 * Output de pdf file
	 * 
	 * @param  string $id
	 * @return Response
	 */
	public function outputPdf($id)
	{
		
		$post = $this->blog_gestion->getById($id);
		
		//$html = view('front.blog.show')->with('post', $post)->render();
		$html = view('hello')->render();

		return $this->pdf
            ->load($html)
            ->show();
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$post = $this->blog_gestion->getById($id);

		$this->authorize('change', $post);

		$this->blog_gestion->destroy($post);

		return redirect('mynews')->with('ok', trans('back/blog.destroyed'));		
	}

}
