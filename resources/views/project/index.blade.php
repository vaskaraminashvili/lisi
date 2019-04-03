@extends('layouts.master')

@section('content')
    @foreach ($projects as $project)
        <a href="{{ route('projects.show' , $project->slug) }}">{{$project->TextTrans('title')}}</a>
    @endforeach
@endsection

