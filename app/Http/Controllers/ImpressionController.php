<?php namespace App\Http\Controllers;

use Vsmoraes\Pdf\Pdf;

class ImpressionController extends Controller
{
    private $pdf;

    public function __construct(Pdf $pdf)
    {
        $this->pdf = $pdf;
    }

    public function index()
    {
        $html = view('hello')->render();

        return $this->pdf
            ->load($html)
            ->show();
    }
}
