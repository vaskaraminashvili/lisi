<div class="section four-season" id="section1">
    <div class="intro" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6">
                    <div data-aos="fade-up"  data-aos-easing="ease-out-cubic"
                    data-aos-duration="1000"
                    data-aos-delay="100"
                     class="four-season__text">
                        <h2>{{$dat->title_ka}}</h2>
                        <p>{{$dat->text_ka}}</p>
                        <form>
                          <div class="form-row">
                              <input type="text" name="email" class="form-control d-inline-block four-season__input" id="inputEmail4" placeholder="Ex: nikadevashvili@gmail.com">
                              <button type="submit" class="btn btn-primary four-season__submit">Submit</button>

                          </div>

                        </form>
                    </div>


                </div><!-- /.col-xl-6 -->
                <div class="col-xl-6 d-none d-md-block">
                    <div
                    data-aos="fade-down"  data-aos-easing="ease-out-cubic"
                    data-aos-duration="1000"
                    data-aos-delay="100"
                     class="position-relative four-season__text">
                        <div class="green_box"></div>
                        <div class="gray_box"></div>
                        <!-- <div class="d-none d-md-block position-relative four-season__img"></div> -->
                        <img src="{{ asset($dat->image) }}" alt="" class="  img-fluid position-relative four-season__img"  />

                    </div>
                </div><!-- /.col-6 -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
</div>
