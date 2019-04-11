
  <div class="position-relative section main_section" id="section0">
        <nav id="menu" class="menu d-flex">
            <div class="menu-logo">
                <img src="{{ asset('assets/logo.png') }}" alt="" />
            </div>
            <div>
                <ul id="myMenu" style="z-index: 30">
                    @foreach ($data as $key => $modul)
                        <li data-menuanchor="{{$key}}" class=""><a href="#{{$key}}">{{ucfirst(str_replace('_' , ' ', $key))}}</a></li>
                    @endforeach
                </ul>
                <div class="text-right menu_phone"><i class="fas fa-phone fa-flip-horizontal"></i> {{$dat->number}}</div>
            </div>
        </nav>
        <div class="intro d-flex">
            <div class="intro__text" data-aos="fade-up" data-aos-easing="ease-out-cubic"
                 data-aos-duration="2000">
                 <h1>{{$dat->title}}</h1>
                 <h3>{{$dat->small_title}}</h3>
                 <p>{{$dat->text}}</p>
                 <button class="btn btn-light">проводить</button>
                 <div class="p-lg-2 visit_our_projects">
                        <div class="visit_our_projects_image">
                            <img src="{{ asset('assets/visit_our_projects.png') }}" alt="visit our Projects" class="img-fluid" />
                        </div>
                        <div class="visit_our_projects_text">
                            <p>Visit our other project</p>
                            <a data-fancybox href="{{$dat->youtube_link}}">
                                Navigate to Lisi
                            </a>

                        </div>
                 </div>
            </div>
        </div>
        <div class="gradiant"></div>
    </div>
