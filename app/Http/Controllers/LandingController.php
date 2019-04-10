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
    public function index($land){
        // dd($land);
        $landing = Landing::where('title', $land)->first()->toArray();
        $socials = Landing_social::find($landing['id']);
        if (!$socials) {
            $socials = Landing_social::findOrFail(1);
        }
        // dd($landing);
        // $moduls= ['first', 'second' , 'third'] ;
        $moduls= ['section_1' , 'section_2' , 'section_3' , 'section_4' , 'section_5' , 'section_6' , 'section_7' , 'section_8' , 'section_9' ,'section_10' , 'section_11' , 'section_12' ] ;
        $data= [];
        $anchors= [];
        // foreach ($landing as $land) {
            foreach ($landing as $key  => $column) {
               if (in_array( $key , $moduls) && $column == 1){
                    $model = 'App\Models\\' . ucfirst($key);

                    if ($key =='project_info') {
                        $modul =$model::where('landing_id' , $landing['id'])->limit(3)->get();
                    }elseif ($key =='project_summary') {
                        $modul_body =$model::where([
                                ['landing_id', '=', $landing['id']],
                                ['is_title', '=', '0'],
                            ])->limit(6)->get();
                        $modul = $model::where([
                                ['landing_id', '=', $landing['id']],
                                ['is_title', '=', '1'],
                            ])->get();
                        $modul->push($modul_body);
                        // dd($modul);
                    } else{
                        $modul =$model::where('landing_id' , $landing['id'])->first();
                        // if ($modul->image) {
                        //     $modul->image = Upload::where('id' , $modul->image)->pluck('url')->first();
                        //     // dd($modul->image);
                        // }
                    }
                    // $footer =Landing_footer::where('landing_id' , $landing['id'])->first();
                    $data[$key][] = $modul;
                    $anchors[] = $key;
               }
            }
            // $anchors[] = 'footer';
            // dd($data);
        return view('landing' , compact('data' ,'moduls', 'anchors' , 'socials' , 'footer'));
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
