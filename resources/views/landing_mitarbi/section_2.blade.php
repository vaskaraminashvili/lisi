
    <div class="section four-season" id="section1">
        <div class="intro" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-5">
                        <div data-aos="fade-up"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="four-season__text">
                            <h2>{!!$dat->title!!}</h2>
                            <p>{{$dat->text}}</p>
                            <button class="btn white-button border-radius-5">Детальнее</button>

                        </div>
                    </div><!-- /.col-xl-6 -->
                    <div class="col-xl-7 d-none d-md-block">
                        <div
                        data-aos="fade-down"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="position-relative four-season__text">
                            <div class="green_box"></div>
                            <div class="gray_box"></div>
                            <!-- <div class="d-none d-md-block position-relative four-season__img"></div> -->
                            <div class="siema">
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
