
    <div class=" section flat-overview " id="section12">
        <div class="d-flex intro">
           <div class="container-fluid">
               <div class="row">
                   <div class="col-xl-9 pr-xl-0">
                       <div class="flat-plan">
                           <div class="row flat-plan-row1">
                               <div class="col-xl-3">
                                   <div class="flat-img">
                                      @foreach ($dat as $key => $room)
                                      {{-- {{dd($room)}} --}}
                                        @if (is_int($key))
                                          <img class="img-fluid" data-title="{{$room->room_name}}" src="{{ asset($room->image) }}">
                                        @endif
                                      @endforeach
                                   </div>
                               </div>
                               <div class="col-xl-9">
                                   <h2 class="text-left flat-name">
                                       {{$dat['title']->title}}
                                   </h2>
                                   <p class="text-left flat-description">
                                       {{$dat['title']->text}}
                                   </p>
                                   <div class="flat-rooms">
                                      @foreach ($dat as $key => $room)
                                      {{-- {{dd($room)}} --}}
                                        @if (is_int($key))
                                         <div class="flat-room">
                                             <h3 class="flat-room-name">{{$room->room_name}}</h3>
                                             <span class="flat-room-sqm">{{$room->meter}}</span>
                                         </div>
                                        @endif
                                      @endforeach

                                   </div>
                               </div>
                           </div><!-- /.row -->
                           <div class="row flat-plan-row2">
                               <div class="col-12 ">
                                    <div class="flat-plan-bottom">
                                        <div class="">{{$dat['title']->sub_title}}</div>
                                        <div class="apt-rooms"></div>
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
