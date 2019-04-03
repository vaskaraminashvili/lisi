    <div class="section flat" id="section5">
        <div class="d-flex intro" style="background-image: url({{$dat->image}});">
            <div class="container-fluid">
                <div class="row">
                    <div class="d-none d-xl-flex col-xl-7 flat__pointers">
                        <div class="furtiture_pointer">
                            <img src="{{ asset('assets/furniture.png') }}" class="img-fluid" alt="" />
                            <p>wooden</p>
                        </div>
                        <div class="chair_pointer">
                            <img src="{{ asset('assets/chair_pointer.png') }}" class="img-fluid" alt="" />
                            <p>all asset ready</p>
                        </div>
                    </div><!-- /.col-xl-7 -->
                    <div class="offset-sm-2 offset-xl-0 col-xl-5">
                        <div class="position-relative flat-wrap">
                            <div class=" flat-title">
                                <h2>{{$dat->title_ka}}</h2>
                            </div><!-- /.flat-title -->
                            <div class=" flat-text">
                                <p>{{$dat->text_ka}}</p>
                            </div><!-- /.flat-text -->
                        </div><!-- /.flat-wrap -->
                    </div><!-- /.col-xl-6 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
