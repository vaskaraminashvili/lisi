
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
{{--                     <li data-menuanchor="section_1" class="active"><a href="#section_1">First section</a></li>
                    <li data-menuanchor="section_2"><a href="#section_2">Second section</a></li>
                    <li data-menuanchor="section_3"><a href="#section_3">About section</a></li>
                    <li data-menuanchor="section_4"><a href="#section_4">Project h section</a></li>
                    <li data-menuanchor="section_5"><a href="#section_5">Project Summary</a></li>
                    <li data-menuanchor="section_6"><a href="#section_6">Project Summary</a></li>
                    <li data-menuanchor="section_7"><a href="#section_7">Flat</a></li>
                    <li data-menuanchor="section_8"><a href="#section_8">footer</a></li> --}}
                </ul>
                <div class="text-right menu_phone"><i class="fas fa-phone fa-flip-horizontal"></i> +38044 556 77 88</div>
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
