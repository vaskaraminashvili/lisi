{{-- {{dd($dat)}} --}}
    <div class=" section flat-overview " id="section12">
        <div class="d-flex intro">
           <div class="container-fluid">
               <div class="row">
                   <div class="col-xl-9 pr-xl-0">
                       <div class="flat-plan">
                          <div class="flat-plan-slide">
                            @foreach ($dat as $key => $apartment)
                              @if (is_int($key))
                              {{-- {{dd($apartment)}} --}}
                                <div class="row d-flex flat-plan-row1" >
                                    <div class="col-6 col-xl-4">
                                        <div class="flat-img">
                                           <img class="img-fluid" data-title="{{$apartment->title}}" src="{{ asset($apartment->image) }}">
                                        </div>
                                    </div>
                                    <div class="col-6 col-xl-8">
                                        <h2 class="text-left flat-name">
                                            {{$apartment->title}}
                                        </h2>
                                        <p class="text-left flat-description">
                                            {{$apartment->text}}
                                        </p>
                                        <div class="flat-rooms">
                                          @for ($i = 1; $i < 7; $i++)
                                             @if (is_int($key))
                                             @continue(!$dat[$key]->{'room_name_'.$i})
                                              <div class="flat-room">
                                                  <h3 class="flat-room-name">{{$dat[$key]->{'room_name_'.$i} }}</h3>
                                                  <span class="flat-room-sqm">{{$dat[$key]->{'meter_'.$i} }}</span>
                                              </div>
                                             @endif
                                           @endfor

                                        </div>
                                    </div>
                                </div><!-- /.row -->
                              @endif
                            @endforeach
                          </div>
                           <div class="row flat-plan-row2">
                               <div class="col-12 ">
                                    <div class="flat-plan-bottom">
                                        <div class="">{{$apartment->sub_title}}</div>
                                        <div class="justify-content-xl-around bottom-0 apt-rooms"></div>
                                    </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="col-xl-3">
                        <div class="flat-plan-call">
                            <div class="flat-plan-call-top">
                                <h2>{{$dat['contact']->contact_title}}</h2>
                                <span class="flat-plan-call-number">
                                    {{$dat['contact']->contact_title}}
                                </span>
                                <img src="{{ asset( $dat['contact']->image) }}" alt="" class="flat-plan-call-img" />
                                <p class="flat-plan-call-text">{{$dat['contact']->contact_text}}</p>

                            </div><!-- /.flat-plan-call-top -->
                            <div class="flat-plan-call-bottom">
                                <form>
                                  <div class="form-group">
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  </div>
                                  <div class="form-group">
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                  </div>

                                  <button type="submit" class="btn btn-block btn-light">ОТПРАВИТЬ</button>
                                </form>
                            </div><!-- /.flat-plan-call-bottom -->

                        </div>
                   </div>
               </div><!-- /.row -->
           </div><!-- /.container-fluid -->
        </div>
    </div>
