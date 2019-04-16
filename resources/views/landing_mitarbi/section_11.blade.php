{{-- {{dd($dat[0])}} --}}
    <div class="section developer-section fp-auto-height" id="section16">
        <div class="intro">
            <div class="developer-titleBox">
                <h2 class="developer-title" >{{$dat[0]->title}}</h2>
                <div class="title-line"></div>
                <button class="btn btn-light title-button">проводить</button>
            </div><!-- /.developer-title -->
            <div class="container-fluid developer-contentBox">
                <div class="row w-100 justify-content-around">

                    @for ($i = 1; $i < 6; $i++)
                        <div class="col-12 col-sm-4 col-xl-2 developer-statistic ">
                            <div class="developer-statistic__imageWrap">
                                <div class="developer-statistic__image">
                                    <img src="{{ asset($dat[0]->{'image_'.$i}) }}" alt="" />
                                </div>
                            </div>
                            <div class="developer-statistic__bottom">
                                <div class="developer-statistic__number">
                                    <h3 class="stat_anime ">
                                      <span class="stat_anime-number">{{$dat[0]->{'statistic_number_'.$i} }}</span>
                                    </h3>
                                </div>
                                <div class="developer-statistic__text">
                                    <p>{{$dat[0]->{'statistic_text_'.$i} }}</p>
                                </div>
                            </div>
                        </div>
                    @endfor
                </div><!-- /.row -->


            </div><!-- /.developer-contentBox -->
        </div>
    </div>
{{--     @push('scripts')
        if (nextIndex.anchor == 'section_11') {
            @foreach ($dat->where('is_title' , 0)->all() as $statistic)
                $('.stat_anime_{{$loop->iteration}} .stat_anime-number').animateNumber({ number: {{$statistic->statistic_number}} } , 500);
            @endforeach
        }
    @endpush --}}
