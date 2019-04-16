{{-- {{dd($dat[0]->image)}} --}}
    <div class="section " id="section15">
        <div class="d-flex intro">
            <div class="container-fluid three-images-wrapper">
                <div class="row three-images">
                    <div class="d-none d-xl-block featured-image-outer">
                        <div class="featured-image-inner" style="background: #fff">
                            <div class="featured-image-upper">
                                <h2>{{$dat[0]->title}}</h2>
                                <p class="readMore">{{$dat[0]->text}}</p>

                            </div>
                            <div class="featured-image-middle">
                                {{-- @foreach ($dat->where('left' , 1)->where('title' , '')->all() as $statistic) --}}
                              @for ($l = 1; $l < 6; $l++)
                                  <div class="invest-statistic ">
                                      <div class="invest-statistic__number">
                                          <h3 class="stat_anime ">
                                              <span class="stat_anime-number stat_anime-number_l">{{$dat[0]->{'left_number_'.$l} }}</span>
                                          </h3>
                                      </div>
                                      <div class="invest-statistic__text">
                                          <p>{{$dat[0]->{'left_text_'.$l} }}</p>
                                      </div>
                                  </div>
                                @endfor
                            </div>
                        </div>
                    </div>

                    <div class="d-none d-xl-block two-images">
                        <div class="two-images-outer">
                            <div class="two-images-inner" style="background-image: url({{$dat[0]->image}});">
                               <div class="featured-image-upper two-images-upper">
                                   <h2 class="text-white">{{$dat[0]->right_title}}</h2>
                                   <p class=" readMore">{{$dat[0]->right_text}} </p>
                               </div>
                               <div class="featured-image-middle two-images-middle">
                                  @for ($r = 1; $r < 6; $r++)
                                    <div class="invest-statistic ">
                                        <div class="invest-statistic__number">
                                            <h3 class="stat_anime ">
                                                <span class="stat_anime-number stat_anime-number_r">{{$dat[0]->{'right_number_'.$r} }}</span>
                                            </h3>
                                        </div>
                                        <div class="invest-statistic__text">
                                            <p>{{$dat[0]->{'right_text_'.$r} }}</p>
                                        </div>
                                    </div>
                                  @endfor

                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="mob-version df-ac col-lg-12">
                      <div>
                        <h2 class="">{{$dat[0]->title}}</h2>
                        <p class="text-dark readMore">{{$dat[0]->text}}</p>
                        <div class="sec_15_stats df-ac d-block d-sm-flex">
                          @for ($l = 1; $l < 6; $l++)
                              <div class="invest-statistic ">
                                  <div class="invest-statistic__number">
                                      <h3 class="stat_anime ">
                                          <span class=" text-dark stat_anime-number stat_anime-number_l">{{$dat[0]->{'left_number_'.$l} }}</span>
                                      </h3>
                                  </div>
                                  <div class="invest-statistic__text">
                                      <p class="text-dark">{{$dat[0]->{'left_text_'.$l} }}</p>
                                  </div>
                              </div>
                            @endfor
                        </div>

                      </div>
                    </div>
                    <div class="mob-version df-ac col-lg-12"  style="background-image: url({{$dat[0]->image}});">
                        <div>
                          <h2 class="text-white">{{$dat[0]->right_title}}</h2>
                          <p class="text-white readMore">{{$dat[0]->right_text}}</p>
                          <div class="sec_15_stats df-ac d-block d-sm-flex">
                            @for ($r = 1; $r < 6; $r++)
                                <div class="invest-statistic ">
                                    <div class="invest-statistic__number">
                                        <h3 class="stat_anime ">
                                            <span class="text-white stat_anime-number stat_anime-number_l">{{$dat[0]->{'right_number_'.$r} }}</span>
                                        </h3>
                                    </div>
                                    <div class="invest-statistic__text">
                                        <p class="text-white">{{$dat[0]->{'right_text_'.$r} }}</p>
                                    </div>
                                </div>
                              @endfor
                          </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    @push('scripts')
{{--         if (nextIndex.anchor == 'section_10') {
            @foreach ($dat->where('is_right' , 1)->where('title' , '')->all() as $statistic)
                $('.stat_anime_{{$loop->iteration}} .stat_anime-number_r').animateNumber({ number: {{$statistic->statistic_number}} } , 500);
            @endforeach
            @foreach ($dat->where('is_left' , 1)->where('title' , '')->all() as $statistic)
                $('.stat_anime_{{$loop->iteration}} .stat_anime-number_l').animateNumber({ number: {{$statistic->statistic_number}} } , 500);
            @endforeach
        } --}}
    @endpush
