    <div class=" section fp-auto-height project-highlights " id="section3">
        <div class="d-flex intro project-highlights__row">
                {{-- {{dd($dat)}} --}}
                    @foreach ($dat as $el)
                        <div class="mb-2 mb-sm-0 project-highlights__div">
                            <div class="project-highlights__wrap"

                            >
                                <div class="project-highlights__header">
                                    {!!$el->icon!!}
                                    <h2 class="project-highlights__title">
                                        {{$el->title}}

                                    </h2>
                                </div><!-- /.project-highlights__header -->
                                <div class="project-highlights__body">

                                    <p>{{$el->text}}</p>
                                </div><!-- /.project-highlights__body -->
                            </div><!-- /.project-highlights__wrap -->
                        </div>
                    @endforeach


        </div>
    </div>
