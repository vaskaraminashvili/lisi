{{-- {{dd($dat)}} --}}
    <div class="section " id="section15">
        <div class="d-flex intro">
            <div class="three-images-wrapper">

                <div class="three-images">
                    <div class="featured-image-outer">
                        <div class="featured-image-inner" style="background: #fff">
                            <div class="featured-image-upper">
                                <h2>{{$dat->where('is_left' , 1)->first()->title}}</h2>
                                <p>{{$dat->where('is_left' , 1)->first()->text}}</p>
                                <button class="btn btn-light border ">проводить</button>
                            </div>
                            <div class="featured-image-middle">
                                @foreach ($dat->where('is_left' , 1)->where('title' , '')->all() as $statistic)
                                  <div class="invest-statistic ">
                                      <div class="invest-statistic__number">
                                          <h3 class="stat_anime">
                                              <span class="stat_anime-prefix">{{$statistic->statistic_prefix}}</span>
                                              <span class="stat_anime-number">{{$statistic->statistic_number}}</span>
                                              <span class="stat_anime-suffix">{{$statistic->statistic_sufix}}</span>
                                          </h3>
                                      </div>
                                      <div class="invest-statistic__text">
                                          <p>{{$statistic->statistic_text}}</p>
                                      </div>
                                  </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="two-images">
                        <div class="two-images-outer">
                            <div class="two-images-inner" style="background-image: url({{$dat->where('is_right' , 1)->where('is_title' , 1)->first()->image}});">
                               <div class="featured-image-upper two-images-upper">
                                   <h2>{{$dat->where('is_right' , 1)->first()->title}}</h2>
                                   <p>{{$dat->where('is_right' , 1)->first()->text}}</p>
                                   <button class="btn btn-light border ">проводить</button>
                               </div>
                               <div class="featured-image-middle two-images-middle">
                                  @foreach ($dat->where('is_right' , 1)->where('title' , '')->all() as $statistic)
                                    <div class="invest-statistic ">
                                        <div class="invest-statistic__number">
                                            <h3 class="stat_anime">
                                                <span class="stat_anime-prefix">{{$statistic->statistic_prefix}}</span>
                                                <span class="stat_anime-number">{{$statistic->statistic_number}}</span>
                                                <span class="stat_anime-suffix">{{$statistic->statistic_sufix}}</span>
                                            </h3>
                                        </div>
                                        <div class="invest-statistic__text">
                                            <p>{{$statistic->statistic_text}}</p>
                                        </div>
                                    </div>
                                  @endforeach

                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
