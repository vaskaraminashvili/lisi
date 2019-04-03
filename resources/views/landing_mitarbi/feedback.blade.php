<div class="container-fluid right  callback">
    <div class="row h-100">
        <div class="col-5 d-flex content callback__content ">
            <div class="position-relative text-center w-100">
                <h3 class="callback__header">CallBack</h3>
                <form action="" class="callback__form">
                    <div class="input-group input-group-sm mb-3 callback__group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-user"></i></span>
                          </div>
                      <input type="text" name="firstname" class="form-control callback__input" aria-label="Sizing example input"  aria-describedby="inputGroup-sizing-sm" placeholder="Write your name here">
                    </div>
                    <div class="input-group input-group-sm mb-3 callback__group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-phone fa-flip-horizontal"></i></span>
                          </div>
                      <input name="phone" type="text" class="form-control callback__input" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="Ex: +995 574 05 12 16">
                    </div>
                      <input name="project" type="hidden" class="" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="{!! Request::segment(2) !!}">
                    <button class="btn btn-block callback__submit submit-button state-0">
                        <span class="pre-state-msg">Submit</span>
                        <span class="current-state-msg hide">Sending...</span>
                        <span class="done-state-msg hide">Done!</span>
                    </button>
                    {{-- <button type="submit" class="btn btn-block callback__submit">Submit </button> --}}
                </form>
                    <button  class="btn btn-block callback__close">Close </button>
            </div>
        </div><!-- /.content -->
    </div><!-- /.row -->

</div><!-- /.right -->

