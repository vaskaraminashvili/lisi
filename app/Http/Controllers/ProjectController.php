<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project;
use App\Block;

class ProjectController extends Controller
{
    public function index(){
        $projects = Project::get();
        return view('project.index' , compact('projects'));
    }
    public function show($slug){
        $project = Project::whereSlug($slug)->firstOrFail();
        $blocks = Block::whereProject_id($project->id)->get();
        return view('project.show', compact('project', 'blocks'));
    }
}
