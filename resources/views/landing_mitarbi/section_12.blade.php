{{-- {{dd($dat)}} --}}
    <div class="section fp-auto-height" id="section11">
        <div class="d-flex intro footer">
            <div class="container-fluid">
                <div class="row row_1">
                    <div class="col-xl-4">
                        <div class="footer-info">
                            <div class="email mb-20">
                                <a href="#">
                                    <i class="fas fa-envelope  fa-fw"></i> {{$dat[0]->email}}
                                </a>
                            </div>
                            <div class="phone mb-20">
                                <i class="fas fa-phone fa-flip-horizontal  fa-fw"></i> {{$dat[0]->number}}
                            </div>
                            <div class="location mb-20">
                                <i class="fas fa-map-marker-alt  fa-fw"></i> {{$dat[0]->address}}
                            </div>
                        </div><!-- /.footer-info -->
                    </div><!-- /.col-xl-4 -->
                    <div class="col-xl-4">
                        <div class="partnerts">
                            <img src="{{ asset($dat[0]->image_1) }}" alt="" />
                            <img src="{{ asset($dat[0]->image_2) }}" alt="" />
                        </div><!-- /.partnerts -->
                    </div><!-- /.col-xl-4 -->
                    <div class="col-xl-4">
                        <div class="footer-text">
                            <div class="footer-text-top">
                                <p>{{$dat[0]->text}}</p>
                            </div><!-- /.footer-text-top -->
                            <div class="footer-text-middle">
                                <button class="btn">Call</button>
                            </div><!-- /.footer-text-midde -->
                        </div><!-- /.footer-text -->
                    </div><!-- /.col-xl-4 -->
                </div>
                <div class="row row_2">
                    <div class="footer-nav">
                        <ul id="" style="">
                           @foreach ($data as $key => $modul)
                             @if (in_array($key , $top_nav))
                               <li data-menuanchor="{{$key}}" class=""><a href="#{{$key}}">{{ucfirst(str_replace('_' , ' ', $key))}}</a></li>
                             @endif

                           @endforeach

                        </ul>
                    </div>
                </div>
                <div class="row row_3">
                    <div class="col-12">
                        <div class="row footer-copyright">
                            <div class=" col-md-6 mt-3 mt-md-0 footer-rights">
                                <span>©2019 LISI-DEVELOPMENT</span>
                                <span>ALL RIGHTS ON INTERNET ASSETS</span>
                            </div>
                            <div class=" col-md-6 footer-socials_lisi">
                                    <ul>
                                        <li><a href="{{$socials->facebook}}" target="_blank"><i class="fab fa-facebook"></i></a></li>
                                        <li><a href="{{$socials->twitter}}" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="{{$socials->instagram}}" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="{{$socials->youtube}}" target="_blank"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="{{$socials->email}}" target="_blank"><i class="fas fa-envelope"></i></a></li>
                                    </ul>
                            </div>
                        </div><!-- /.footer-copyright -->
                    </div><!-- /.col-12 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
