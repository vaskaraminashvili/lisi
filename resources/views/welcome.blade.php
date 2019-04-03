@extends('layouts.master')
@section('content')
<div class="row">
@foreach ($sliders as $slider)
<div class="col-4">
    <img src="{{$slider->image->url}}" class="img-fluid" alt="" style="height: 150px; overflow-y: hidden;" />
    <p>{{$slider->TextTrans('text')}}</p>
</div><!-- /.col-12 -->
@endforeach
</div>
<div class="row">
    @forelse ($green_zones as $green_zone)
    <div class="col-6">
        <p>{{$green_zone->TextTrans('title')}}</p>
    </div>
    @empty
    <div class="col-12">
        no green
    </div><!-- /.col-12 -->
    @endforelse
</div><!-- /.row -->

@endsection
