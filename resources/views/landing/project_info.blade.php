{{-- {{dd($dat)}} --}}
<div class=" section fp-auto-height project-highlights " id="section3">
    <div class="d-flex intro">
        <div class="container-fluid">
            <div class="row project-highlights__row">
                @foreach ($dat as $key => $col)
                    <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                        <div class="project-highlights__wrap"
                        @if ($key == 1)
                            data-aos="fade-down"
                        @else
                            data-aos="fade-up"
                        @endif
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                        >
                            <div class="project-highlights__header">
                                {!!$col->icon!!}
                                {{-- <i class="fas fa-calendar-alt"></i> --}}
                                <h2 class="project-highlights__title">
                                    {{$col->title_ka}}
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>{{$col->text_ka}}</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                @endforeach

{{--                 <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                    <div class="project-highlights__wrap"
                    data-aos="fade-down"
                    data-aos-easing="ease-out-cubic"
                    data-aos-duration="1000"
                    data-aos-delay="200"
                    >
                        <div class="project-highlights__header">
                            <i class="fas fa-calendar-alt"></i>
                            <h2 class="project-highlights__title">
                                About Project
                            </h2>
                        </div><!-- /.project-highlights__header -->
                        <div class="project-highlights__body">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique omnis voluptatum quis alias mollitia repellat a voluptatibus aperiam inventore eaque.</p>
                        </div><!-- /.project-highlights__body -->
                    </div><!-- /.project-highlights__wrap -->
                </div>
                <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                    <div class="project-highlights__wrap"
                    data-aos="fade-up"
                    data-aos-easing="ease-out-cubic"
                    data-aos-duration="1000"
                    data-aos-delay="300"
                    >
                        <div class="project-highlights__header">
                            <i class="fas fa-calendar-alt"></i>
                            <h2 class="project-highlights__title">
                                About Project
                            </h2>
                        </div><!-- /.project-highlights__header -->
                        <div class="project-highlights__body">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique omnis voluptatum quis alias mollitia repellat a voluptatibus aperiam inventore eaque.</p>
                        </div><!-- /.project-highlights__body -->
                    </div><!-- /.project-highlights__wrap -->
                </div> --}}
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->

    </div>
</div>
