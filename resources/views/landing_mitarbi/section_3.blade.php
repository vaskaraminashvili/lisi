
    <div class=" section about-project" id="section2">
        <div class=" about-page-slide">
            @foreach ($dat as $key => $slide)
            {{-- {{dd($slide)}} --}}
                <div  class="" style="height: 100vh;">
                    <div class="d-flex intro">
                        <div class="bg-image compatible">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xl-6 offset-lg-5">
                                        <div class="text-right">
                                            <h1 class="about-project__title">{{$slide->title}}</h1>
                                             <p class="about-project__text readMore">{{$slide->text}}</p>
                                        </div>


                                    </div><!-- /.col-6 -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="partners">
            <h3 class="text-white">Our Partner Companies</h3>
            <div class="partner__logos">
                @foreach ($dat[0]->images as $partner)
                    <div>
                        <img class="img-fluid" src="{{ asset($partner->image) }}" alt="" />
                    </div>
                @endforeach
            </div>
        </div>
    </div>
