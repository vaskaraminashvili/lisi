{{-- {{dd($dat)}} --}}
    <div class="section buildings-section " id="section13">
        <div class="d-flex intro">
           <div class="container-fluid">
               <div class="row">
                    <div class="col-12">
                        <div class="buildings-title-section">
                            <h2 class="text-left">{{$dat['title']->title}}</h2>
                        </div><!-- /.buildings-title -->
                    </div><!-- /.col -->
               </div><!-- /.row -->
               <div class="row">
                    <div class="col-12">
                        <div class="buildings-section__slider">
                            @foreach ($dat as $key => $building)
                            {{-- {{dd($building)}} --}}
                              @if (is_int($key))
                                <div class="buildings-section__slide">
                                    <div class="buildings-section__slide-top">
                                        <h3 class="slide-title">{{$building->building_title}}</h3>
                                    </div>
                                    <div class="slide-middle-bottom">
                                        <div class="position-relative buildings-section__slide-middle">
                                            @if ($building->sold_out)
                                                <div class="sold-flag">
                                                    <img src="{{ asset('assets/sold_out.png') }}" class="img-fluid" alt="" />
                                                </div>
                                            @endif
                                            <img class="img-fluid slide-image" src="{{ asset($building->image) }}" alt="" />
                                            <div class="slide-image-bottom">
                                                <p>{{$building->building_text}}</p>
                                            </div>
                                        </div>
                                        @if ($building->sold_out)
                                            <div class="buildings-section__slide-bottom">
                                                <p class="sold-out">Sold - 100%</p>
                                                <p class="sales-ended">Sales ended</p>
                                            </div>
                                        @else
                                            <div class="buildings-section__slide-bottom">
                                                <p class="in-sale">Sold - {{$building->sold_percent}}%</p>
                                                <p class="sales-ended">In Sale</p>
                                            </div>
                                        @endif

                                    </div>
                                </div>
                              @endif
                            @endforeach



                        </div>
                    </div><!-- /.col -->
               </div><!-- /.row -->
           </div><!-- /.container-fluid -->

        </div>
    </div>
