@extends('layouts.landing_mitarbi' ,['socials' => $socials , 'anchors' => $anchors ,'footer' => $footer])
@section('content')
    {{-- @include('landing.home') --}}
    @foreach ($data as $key => $element)
    {{-- {{dd($key)}} --}}
       @include('landing_mitarbi.'.$key , $dat = $data[$key][0])
    @endforeach
@endsection
