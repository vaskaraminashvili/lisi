<?php

namespace App\Http\Controllers;
use App\Models\First;
use App\Models\Landing;
use App\Models\Landing_footer;
use App\Models\Landing_social;
use App\Models\Second;
use App\Models\Upload;
use Illuminate\Http\Request;
use App\Models\Callback;

class LandingController extends Controller
{
    public function getImages($modul , $pluck = 'url'){
        $images = json_decode($modul);
        foreach ($images as &$image) {
            $image = Upload::where('id' , $image)->pluck('url')->first();
        }
        return $images;
    }
    //gets all images at once from all collection and returns array of paths
    public function getImage($modul ,$field='image' ,$outPut = 'image',  $pluck = 'url'){
        foreach ($modul as &$image) {
            $image->$outPut = Upload::where('id' , $image->$field)->pluck('url')->first();
        }
        return $modul;
    }
    public function index(){
        $landing = Landing::where('title', 'lisi')->first()->toArray();
        $socials = Landing_social::find($landing['id']);
        if (!$socials) {
            $socials = Landing_social::findOrFail(1);
        }
        $moduls= ['section_1' , 'section_2' , 'section_3' , 'section_4' , 'section_5' , 'section_6' , 'section_7' , 'section_8' , 'section_9' ,'section_10' , 'section_11' , 'section_12' ] ;
        $data= [];
        $anchors= [];
            foreach ($landing as $key  => $column) {
               if (in_array( $key , $moduls) && $column == 1){
                    $model = 'App\Models\\' . ucfirst($key);

                    if ($key =='section_3') {
                        $modul =$model::where('landing_id' , $landing['id'])->with('partners')->limit(6)->get();
                        // dd($modul);
                        $images = $this->getImage($modul[0]->partners()->get() , 'image' , 'image');
                        $modul[0]->images = $images;
                    }elseif($key =='section_4'){
                        $modul =$model::where('landing_id' , $landing['id'])->limit(5)->get();
                        // dd( $modul);
                    }
                    elseif($key =='section_5') {
                        $modul =$model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->limit(6)->get();
                        $modul = $this->getImage($modul , 'background_image' , 'image');

                        // $modul = $model::where([
                        //         ['landing_id', '=', $landing['id']],
                        //         ['is_title', '=', '1'],
                        //     ])->get();
                        // $modul->push($modul_body);
                    }elseif($key =='section_6') {
                        $apartment = $model::where([
                                ['landing_id', '=', $landing['id']],
                                ['title', '<>', ''],
                                ['active', '=', '1'],
                            ])->limit(6)->get();
                        $modul = $this->getImage($apartment);
                        $contact =$model::where([
                                ['landing_id', '=', $landing['id']],
                                ['is_contact', '=', '1'],
                            ])->first();
                        $contact->image = Upload::where('id' , $contact->contact_image)->pluck('url')->first();
                        // dd($modul_title);

                        // $modul->put('title' , $apartment);
                        $modul->put('contact' , $contact);
                        // dd($modul);

                        // $modul->merge($rooms);
                    }elseif($key =='section_7') {
                        $buildings = $model::where([
                                ['landing_id', '=', $landing['id']],
                                ['is_title', '=', 0],
                            ])->get();
                        $modul = $this->getImage($buildings , 'building_image');
                        $title =$model::where([
                                ['landing_id', '=', $landing['id']],
                                ['is_title', '=', '1'],
                            ])->first();
                        // dd($modul_title);

                        $modul->put('title' , $title);
                        // dd($modul);

                        // $modul->merge($rooms);
                    }elseif($key =='section_8') {
                        $buildings = $model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->get();
                        $modul = $this->getImage($buildings);
                        // dd($modul);

                        // $modul->merge($rooms);
                    }elseif($key =='section_9') {
                        $buildings = $model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->get();
                        $modul = $this->getImage($buildings , 'image_1' , 'image_1');
                        $modul = $this->getImage($buildings , 'image_2' , 'image_2');
                        $modul = $this->getImage($buildings , 'image_3' , 'image_3');
                        // dd($modul);
                    }elseif($key =='section_10') {
                        $modul = $model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->get();
                        // $modul->where('is_right' , 1)->where('is_title' , 1)->get();
                        $image = $this->getImage($modul , 'image' , 'image');
                        // dd($modul->where('is_right' , 1)->where('is_title' , 1)->first()->image);
                        // $modul->where('is_right' , 1)->where('is_title' , 1)->first()->image = $image->image;
                    }elseif($key =='section_11') {
                        $modul = $model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->get();
                        for ($i=1; $i < 6; $i++) {
                            $image = $this->getImage($modul , 'statistic_image_'.$i , 'image_'.$i);
                        }
                        // dd($modul);
                    }elseif($key =='section_12') {
                        $modul = $model::where([
                                ['landing_id', '=', $landing['id']],
                            ])->get();
                        $image = $this->getImage($modul , 'image_1' , 'image_1');
                        $image = $this->getImage($modul , 'image_2' , 'image_2');

                    }else{
                        $modul =$model::where('landing_id' , $landing['id'])->first();

                        if ($modul->background_image) {
                            $modul->background_image = Upload::where('id' , $modul->background_image)->pluck('url')->first();
                        }
                        if ($modul->slider) {
                            $sliders = json_decode($modul->slider);
                            foreach ($sliders as $slide) {
                                $slider[] = Upload::where('id' , $slide)->pluck('url')->first();
                            }
                            $modul->slider = $slider;
                        }
                    }
                    // $footer =Landing_footer::where('landing_id' , $landing['id'])->first();
                    $data[$key][] = $modul;
                    $anchors[] = $key;
               }
            }
            $top_nav = ['Four Season' => 'section_2' , 'section_3' ,'section_6' ,'section_8' ,'section_9' ,'section_10' ,] ;
            $allKeys = array_keys($top_nav);
            // dd($socials);
        return view('landing' , compact('data' ,'moduls', 'anchors' , 'socials' , 'top_nav' , 'allKeys'));
    }
    public function callback(Request $request){
        if ($request->has('seasons') && $request->seasons == true ) {
            $validator = $request->validate([
                'email' => 'required|max:255',
            ]);

                Callback::create($request->all());
                return;
        }
        $validator = $request->validate([
            'firstname' => 'required|max:255',
            'phone' => 'required',
        ]);

            Callback::create($request->all());
        return;
        // return $request->email;
    }
}
