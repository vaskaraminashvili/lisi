    <div class=" section about-project" id="section2" >
        <div class="d-flex intro" style="background-image: url({{$dat->image}});">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-6 offset-lg-6">
                        <div class="text-right"
                        data-aos="fade-left"
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="200"
                        >
                            <h1 class="about-project__title">{{$dat->title_ka}}</h1>
                             <p class="about-project__text">{{$dat->text_ka}}</p>
                             <a href="{{ url($dat->link) }}" target="_blank" class="btn about-project__btn">
                                detail about project
                             </a>
                        </div>


                    </div><!-- /.col-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
