
    <div class=" section about-project" id="section2">
        @foreach ($dat as $key => $slide)
            <div  class="slide" id="slide{{$key}}" data-anchor="slide{{$key}}">
                <div class="d-flex intro">
                <div class="bg-image compatible">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-6 offset-lg-6">
                                <div class="text-right"
                                >
                                    <h1 class="about-project__title">{{$slide->title}}</h1>
                                     <p class="about-project__text">{{$slide->text}}</p>
                                     <button class="btn about-project__btn">
                                        Детальнее
                                     </button>
                                </div>


                            </div><!-- /.col-6 -->

                        </div>
                    </div>
                </div>
                </div>
            </div>
        @endforeach
        {{-- {{dd($dat[0]->partners()->get())}} --}}
        <div class="partners">
            <h3 class="text-white">Our Partner Companies</h3>
            <div class="partner__logos">
                @foreach ($dat[0]->images as $partner)
                    <div>
                        <img class="img-fluid" src="{{ asset($partner) }}" alt="" />
                    </div>
                @endforeach

{{--                 <div>
                    <img class="img-fluid" src="{{ asset('assets/lisi.png') }}" alt="" />
                </div>
                <div>
                    <img class="img-fluid" src="{{ asset('assets/bmw.png') }}" alt="" />
                </div>
                <div>
                    <img class="img-fluid" src="{{ asset('assets/slack.png') }}" alt="" />
                </div> --}}
            </div>
        </div>
    </div>
