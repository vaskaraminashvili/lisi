
  <div class=" position-relative section main_section" id="section0">
        <nav id="menu" class="menu d-flex navbar navbar-expand-lg navbar-dark" style="z-index: 30">
          <a class="navbar-brand menu-logo" href="/kokhta-mitarbi-ua">
             <img src="{{ asset('assets/logo.png') }}" alt="" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto" >
                @foreach ($data as $key => $modul)
                  @if (in_array($key , $top_nav))
                    <li data-menuanchor="{{$key}}" class="nav-item"><a href="#{{$key}}" class="nav-link">{{ucfirst(str_replace('_' , ' ', $key))}}</a></li>
                  @endif

                @endforeach
            </ul>

          </div>
        </nav>
{{--         <nav id="menu" class="menu d-flex navbar navbar-expand-lg ">
            <div class="menu-logo">
                <img src="{{ asset('assets/logo.png') }}" alt="" />
            </div>
            <div>
                <ul id="myMenu" style="z-index: 30">
                    @foreach ($data as $key => $modul)
                      @if (in_array($key , $top_nav))
                        <li data-menuanchor="{{$key}}" class=""><a href="#{{$key}}">{{ucfirst(str_replace('_' , ' ', $key))}}</a></li>
                      @endif

                    @endforeach
                </ul>
                <div class="text-right menu_phone"><i class="fas fa-phone fa-flip-horizontal"></i> {{$dat->number}}</div>
            </div>
        </nav> --}}
        <div class="intro d-flex"   style="background: url({{ asset($dat->background_image) }});">
            <div class="container-fluid">
              <div class="row">
                <div class="offset-xl-1 col-xl-10">
                  <div class="intro__text " >
                       <h1>{{$dat->title}}</h1>
                       <h3>{{$dat->small_title}}</h3>
                       <p class="readMore">{{$dat->text}} </p>
                       {{-- <button class="btn btn-light">проводить</button> --}}
                       <div class="row">
                         <div class="col-xl-4 col-md-6">
                           <div class="row p-lg-2 visit_our_projects">
                                  <div class="col-4 col-xl-4 text-center visit_our_projects_image">
                                      <img src="{{ asset('assets/visit_our_projects.png') }}" alt="visit our Projects" class="img-fluid" />
                                  </div>
                                  <div class="col-8 col-md-6 visit_our_projects_text">
                                      <p>Visit our other project</p>
                                      <a data-fancybox href="{{$dat->youtube_link}}">
                                          Navigate to Lisi
                                      </a>

                                  </div>
                           </div>
                         </div><!-- /.col-xl-5 -->
                       </div><!-- /.row -->

                  </div>
                </div><!-- /.col-xl-5 -->
              </div><!-- /.row -->
            </div><!-- /.container -->

        </div>
        <div class="gradiant"></div>
    </div>

