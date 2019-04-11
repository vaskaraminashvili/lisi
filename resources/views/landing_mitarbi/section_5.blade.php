
    <div class=" section project-summary" id="section4">
        <div class="d-flex intro">
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
                                @foreach ($dat[1] as $statistic)
                                    {!! $loop->iteration % 2 != 0 ? '<div class="col-xl-4">' : '' !!}
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate_{{$loop->iteration}}">{{$statistic->statistic_prefix}}<span>{{$statistic->statistic_number}}</span>{{$statistic->statistic_sufix}}</h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>{{$statistic->statistic_text}}</p>
                                        </div>
                                    </div>
                                    {!! $loop->iteration % 2 == 0 ? '</div>' : '' !!}
                                @endforeach
{{--                                 <div class="col-xl-4">
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate">$<span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="statistic last">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic last">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div> --}}

                            </div>
                        </div><!-- /.project-summary__wrap -->
                    </div><!-- /.col-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
