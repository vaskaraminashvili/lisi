{{-- {{dd($dat[0])}} --}}
    <div class=" section project-summary" id="section4">
        <div class="d-flex intro" style="background: url({{ asset($dat[0]->image) }});">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="project-summary__wrap">
                            <div class="row">
                                <div class="col-xl-4 summary__title-wrap">
                                    <h2 class="project-summary__title">{{$dat[0]->title}}</h2>
                                </div><!-- /.col-xl-4 -->
                                <div class="col-xl-8 summary__text-wrap">
                                    <p class="project-summary__text">
                                        {{$dat[0]->text}}
                                    </p>
                                </div><!-- /.col-xl-8 -->
                            </div>
                            <div class="row statistics-row">
                                @for ($i = 1; $i < 7 ; $i++)
                                    {!! $i % 2 != 0 ? '<div class="col-xl-4">' : '' !!}
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate">{{$dat[0]->{'statistic_number_'.$i} }}</h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>{{ $dat[0]->{'statistic_text_'.$i} }}</p>
                                        </div>
                                    </div>
                                    {!! $i % 2 == 0 ? '</div>' : '' !!}
                                @endfor
                            </div>
                        </div><!-- /.project-summary__wrap -->
                    </div><!-- /.col-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
    @push('scripts')
{{--         if (nextIndex.anchor == 'section_5') {
            @foreach ($dat[1] as $statistic)
                $('.n_animate_{{$loop->iteration}} span').animateNumber({ number: {{$statistic->statistic_number}} } , 500);
            @endforeach
        } --}}
    @endpush
