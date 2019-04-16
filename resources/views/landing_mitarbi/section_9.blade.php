    <div class="section houseInterior-section" id="section14">
        <div class="d-flex intro">
            <div class="container-fluid">
                <div class="row">
                    <div class="position-relative d-none d-xl-flex offset-xl-1 col-xl-5">
                        <div class=" houseInterior__left">
                            <img class="img-fluid img1" src="{{ asset($dat[0]->image_1) }}" alt="" />
                            <img class="img-fluid img2" src="{{ asset($dat[0]->image_2) }}" alt="" />
                            <img class="img-fluid img3" src="{{ asset($dat[0]->image_3) }}" alt="" />
                        </div><!-- /.houseInterior__left -->
                    </div>
                    <div class="col-sm-6 d-block d-xl-none ">
                        <div class="threeImagesSlider">
                            <div>
                                <img class="img-fluid img1" src="{{ asset($dat[0]->image_1) }}" alt="" />
                            </div>
                            <div>
                                <img class="img-fluid img2" src="{{ asset($dat[0]->image_2) }}" alt="" />
                            </div>
                            <div>
                                <img class="img-fluid img3" src="{{ asset($dat[0]->image_3) }}" alt="" />
                            </div>
                        </div>

                    </div>
                    <div class=" d-none d-xl-flex col-xl-1"></div><!-- /.col-xl-1 -->
                    <div class="col-sm-6 col-xl-4">
                        <div class="houseInterior__right">
                            <div class="houseInterior__top">
                                <h2 class="houseInterior__title">{{$dat[0]->title}}</h2>
                                <p class="houseInterior__text">{{$dat[0]->text}}</p>
                            </div><!-- /.houseInterior__right-top -->
                            <div class="houseInterior__middle">
                                <form>
                                  <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">
                                  </div>
                                  <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Mobile Number">
                                  </div>
                                  <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Email">
                                  </div>

                                  <button type="submit" class="btn btn-dark btn-block">Submit</button>
                                </form>
                            </div><!-- /.house-interior__right-middle -->

                        </div>
                    </div>
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
