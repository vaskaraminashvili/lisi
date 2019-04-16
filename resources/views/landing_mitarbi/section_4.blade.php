    <div class=" section fp-auto-height project-highlights " id="section3">
        <div class="container-fluid">
            <div class="row intro project-highlights__row">

                    @foreach ($dat as $el)
                        <div class="col-12 col-sm-4 col-xl-2 mb-5 mb-sm-0 project-highlights__div">
                            <div class="mx-auto mx-md-0 project-highlights__wrap">
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
        </div><!-- /.container-fluid -->

    </div>
