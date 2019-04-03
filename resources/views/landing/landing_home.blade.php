{{-- {{dd($data)}} --}}
{{-- {{dd($data)}} --}}
    <div class="position-relative section" id="section0">
        <nav id="menu" class="menu d-flex">
            <div>
                <img src="{{ asset('assets/logo.png') }}" alt="" />
            </div>
            <div>
                <ul id="myMenu" style="z-index: 30">
                    @foreach ($data as $key => $modul)
                        <li data-menuanchor="{{$key}}" class=""><a href="#{{$key}}">{{ucfirst(str_replace('_' , ' ', $key))}}</a></li>
                    @endforeach
{{--                     <li data-menuanchor="secondPage"><a href="#secondPage">Second section</a></li>
                    <li data-menuanchor="thirdpage"><a href="#thirdpage">About section</a></li>
                    <li data-menuanchor="project_h"><a href="#project_h">Project h section</a></li>
                    <li data-menuanchor="summary"><a href="#summary">Project Summary</a></li>
                    <li data-menuanchor="flat"><a href="#flat">Flat</a></li> --}}
                    <li data-menuanchor="footer"><a href="#footer">Footer</a></li>
                </ul>
            </div>
        </nav>
        <div class="intro d-flex" style="background-image: url({{$dat->image}});">
            <div class="intro__text" data-aos="fade-up" data-aos-easing="ease-out-cubic"
                 data-aos-duration="2000">
                 <h1>{{$dat->title_ka}}</h1>
                 <p>{{$dat->text_ka}}</p>
            </div>
        </div>
        <div class="gradiant"></div>
    </div>
