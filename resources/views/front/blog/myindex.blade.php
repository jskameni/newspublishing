@extends('front.template')

@section('main')

<?php
	/**
 * Added by Jaurès : display short description of custom post : societe
  **/
 function shortdesc($chaine, $number_description_max, $end="..."){

   if(strlen($chaine) < $number_description_max) return $chaine;
   $newChaine=explode(" ",$chaine);  
   $nbWords = count($newChaine); 
   $shortDesc='';
   $c=0;
   while(isset($newChaine[$c])){
      if(strlen($shortDesc." ".$newChaine[$c])<=$number_description_max){
         $shortDesc=$shortDesc." ".$newChaine[$c];
      }
      else break;
      $c++;
   }
   $shortDesc .= $end;
   
   return $shortDesc;
}
?>

	<div class="row">

        <div class="col-lg-12">
            {!! link_to('mynews/create', trans('front/blog.add'), ['class' => 'btn btn-default btn-lg pull-right']) !!}
        </div>

    </div>

    <div class="row">
	
		   <?php
		   if(count($posts)==0)
			echo '<div class="box">
				  No news.
				  </div>';
		    ?>

			@foreach($posts as $post)
				<div class="box">
					<div class="col-lg-12 text-center">
						<h2>{{ $post->title }}
						<br>
						<small>{{ $post->user->email }} {{ trans('front/blog.on') }} {!! $post->created_at . ($post->created_at != $post->updated_at ? trans('front/blog.updated') . $post->updated_at : '') !!}</small>
						</h2>
					</div>
					<div class="col-lg-12">
						<p><?php echo $post->summary."\n".shortdesc ($post->content,150,'...') ?></p>
					</div>
					<div class="col-lg-12 text-center">
						{!! link_to('mynews/' . $post->id, trans('front/blog.button'), ['class' => 'btn btn-default btn-lg']) !!}
						{!! link_to('mynews/destroy/' . $post->id, trans('front/blog.remove'), ['class' => 'btn btn-default btn-lg']) !!}
						<hr>
					</div>
				</div>
			@endforeach
			
		 
        <div class="col-lg-12 text-center">
            {!! $links !!}
        </div>

    </div>

@stop

