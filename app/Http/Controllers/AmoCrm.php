<?php

namespace App\Http\Controllers;
use App\Models\Slider;
use Illuminate\Http\Request;

class AmoCrm extends Controller
{
    public function index(){
        $sliders = Slider::all();
    }
}
