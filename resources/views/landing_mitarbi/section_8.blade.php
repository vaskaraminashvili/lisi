{{-- {{dd($dat)}} --}}
    <div class="section flat" id="section5">
        @foreach ($dat as $key => $slide)
            <div  class="" >
                <div class="d-flex intro" style="background: url({{ asset($slide->image) }}); height: 100vh;">
                    <div class="container-fluid">
                        <div class="row">

                            <div class="offset-sm-2 offset-xl-7 col-xl-5">
                                <div class="position-relative flat-wrap">
                                    <div class=" flat-title">
                                        <h2>{{$slide->title}}</h2>
                                    </div><!-- /.flat-title -->
                                    <div class=" flat-text">
                                        <p>{{$slide->text}}</p>
                                    </div><!-- /.flat-text -->

                                </div><!-- /.flat-wrap -->
                            </div><!-- /.col-xl-6 -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->

                </div>
            </div>
        @endforeach
    </div>
