
    <div class="section four-season" id="section1">
        <div class="intro" style="background: url({{ asset($dat->background_image) }});">
            <div class="container-fluid">
                <div class="row">
                    <div class="offset-xl-1 col-xl-5">
                        <div class="four-season__text">
                            <h2>{!!$dat->title!!}</h2>
                            <p class="readMore">{{$dat->text}}</p>
                        </div>
                    </div><!-- /.col-xl-6 -->
                    <div class="col-xl-6  d-md-block">
                        <div class="position-relative four-season__text">
                            <div class="green_box"></div>
                            <div class="gray_box"></div>
                            <!-- <div class="d-none d-md-block position-relative four-season__img"></div> -->
                            <div class="section_2-slider">
                                @foreach ($dat->slider as $slide)
                                    <img src="{{ asset($slide) }}" class="img-fluid four-season__img"  />
                                @endforeach
                            </div>
                        </div>
                    </div><!-- /.col-6 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
