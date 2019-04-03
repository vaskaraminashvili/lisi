<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <script
          src="https://code.jquery.com/jquery-3.3.1.js"
          integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
          crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Navbar</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                @forelse ($navigation as $nav)
                    <li class="nav-item">
                      <a class="nav-link" href="#">{{$nav->TextTrans('menu')}} <span class="sr-only">(current)</span></a>
                    </li>
                @empty
                    {{-- empty expr --}}
                @endforelse
                <li class="nav-item">
                             <select id="LanguageSwitcher" class="selectpicker" name="locale" >
                               <option value="ka" @if(\Session::get('locale') == 'ka') {{  'selected' }} @endif>GE</option>
                               <option value="en" @if(\Session::get('locale') == 'en') {{  'selected' }} @endif>EN</option>
                               <option value="ru" @if(\Session::get('locale') == 'ru') {{  'selected' }} @endif>RU</option>
                             </select>
                             {{ csrf_field() }}
                           </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </nav>
        <div class="container">
          @yield('content')
        </div><!-- /.container -->
        <script>
            $(document).ready(function(){
              $("#LanguageSwitcher").change(function(event){
                var lang = $(this).val();
                $.ajaxSetup({
                  url: "{{route('language')}}",
                  global: false,
                  type: "GET",
                  headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                  }
                });
                $.ajax({

                        data : { locale : lang, _token: '{{ csrf_token() }}' },
                        success :  function(data){
                            location.reload(true);
                        },
                          error :  function(data){},
                     beforeSend :  function(data){},
                       complete :  function(data){
                       }
                });
              });
            });

            </script>
        </script>
    </body>
</html>
