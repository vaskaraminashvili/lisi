{{-- {{dd($dat)}} --}}
    <div class="section developer-section" id="section16">
        <div class="intro">
            <div class="developer-titleBox">
                <h2 class="developer-title" >{{$dat->where('is_title' , 1)->first()->title}}</h2>
                <div class="title-line"></div>
                <button class="btn btn-light title-button">проводить</button>
            </div><!-- /.developer-title -->
            <div class="developer-contentBox">
                @foreach ($dat->where('is_title' , 0)->all() as $statistic)
                    {{-- {{dd($statistic)}} --}}
                    <div class="developer-statistic ">
                        <div class="developer-statistic__imageWrap">
                            <div class="developer-statistic__image">
                                <img src="{{ asset($statistic->image) }}" alt="" />
                            </div>
                        </div>
                        <div class="developer-statistic__bottom">
                            <div class="developer-statistic__number">
                                <h3 class="stat_anime">
                                    <span class="stat_anime-prefix">{{$statistic->statistic_prefix}}</span><span class="stat_anime-number">{{$statistic->statistic_number}}</span><span class="stat_anime-suffix">{{$statistic->statistic__sufix}}</span>
                                </h3>
                            </div>
                            <div class="developer-statistic__text">
                                <p>{{$statistic->statistic_text}}</p>
                            </div>
                        </div>
                    </div>
                @endforeach



            </div><!-- /.developer-contentBox -->
        </div>
    </div>
