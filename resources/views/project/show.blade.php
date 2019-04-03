@extends('layouts.master')

@section('content')
    @foreach ($blocks as $block)
        <p>{{$block->TextTrans('title')}}</p>
    @endforeach

@endsection
