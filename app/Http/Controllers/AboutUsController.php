<?php

namespace App\Http\Controllers;
use App\Company_view;
use App\Company_MIssion;
use App\Team;
use App\Project;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function index(){
        // company views
        $views = Company_view::whereActive(1)->get();
        // company missions
        $missions = Company_Mission::whereActive(1)->get();
        // company team
        $team = Team::whereActive(1)->get();
        // company other projects
        $projects = Project::whereActive(1)->get();
        return 'about view';
    }
}
