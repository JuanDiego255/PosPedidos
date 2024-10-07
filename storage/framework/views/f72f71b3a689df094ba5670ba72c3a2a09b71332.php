<?php
$storeTimings = helper::getStoreTimings($storeinfo->id);

$delivery_types = explode(',', helper::appdata($storeinfo->id)->delivery_type);
if (Session::has('table_id')) {
    $delivery_types = [3];
}

?>
<header>
    <div class="header-main fixed-top">
        <?php if(env('Environment') == 'sendbox'): ?>
        <div class="sale">
            <div class="container">
                <div class="d-block d-md-flex justify-content-center align-items-center">
                    <p class="text-center"> <a href="#" target="_blank"></a></p>
                </div>
            </div>
        </div>
        <?php endif; ?>
        <div class="container">
            <div class="Navbar">
                <a href="<?php echo e(URL::to(@$storeinfo->slug)); ?>" class="logo mx-2">
                    <img src="<?php echo e(helper::image_path(helper::appdata(@$storeinfo->id)->logo)); ?>" alt="">
                </a>
                <div class="d-flex align-items-center gap-3">
                    <nav class="align-items-center <?php echo e(session()->get('direction') == 2 ? 'menu-rtl' : 'menu'); ?>">
                        <div id="deletebtn">
                            <i class="fa-solid fa-xmark"></i>
                        </div>
                        <ul class="navbar-nav header-menu-items">
                            <li class="nav-item dropdown header-dropdown-menu px-4">
                                <a class="nav-link <?php echo e(request()->is(@$storeinfo->slug) ? 'active' : ''); ?> <?php echo e(request()->is('/') ? 'active' : ''); ?>" href="<?php echo e(URL::to(@$storeinfo->slug)); ?>">
                                    <?php echo e(trans('labels.home')); ?>

                                </a>
                            </li>
                            <li class="nav-item dropdown header-dropdown-menu px-4">
                                <a class="nav-link <?php echo e(request()->is(@$storeinfo->slug.'/aboutus') ? 'active' : ''); ?> <?php echo e(request()->is('aboutus') ? 'active' : ''); ?>" href="<?php echo e(URL::to(@$storeinfo->slug . '/aboutus')); ?>">
                                    <?php echo e(trans('labels.about_us')); ?>

                                </a>
                            </li>
                            <li class="nav-item dropdown header-dropdown-menu px-4">
                                <a class="nav-link <?php echo e(request()->is(@$storeinfo->slug.'/contact') ? 'active' : ''); ?> <?php echo e(request()->is('contact') ? 'active' : ''); ?>" href="<?php echo e(URL::to(@$storeinfo->slug . '/contact')); ?>">
                                    <?php echo e(trans('labels.contact_us')); ?>

                                </a>
                            </li>

                           <!-- <li class="nav-item dropdown header-dropdown-menu px-4">
                                <a href="<?php echo e(URL::to(@$storeinfo->slug . '/tablebook')); ?>" class="nav-link <?php echo e(request()->is(@$storeinfo->slug.'/tablebook') ? 'active' : ''); ?> <?php echo e(request()->is('tablebook') ? 'active' : ''); ?>">
                                    <?php echo e(trans('labels.table_book')); ?>

                                </a>
                            </li>-->

                            <li class="nav-item dropdown header-dropdown-menu px-4">
                                <a href="javascript:void(0)" class="nav-link" data-bs-toggle="modal" data-bs-target="#searchModal">
                                    <?php echo e(trans('labels.search')); ?>

                                </a>
                            </li>
                            <!--<li class="nav-item dropdown header-dropdown-menu px-4 d-flex align-items-center d-none d-lg-inline-block">-->
                            <!--    <div class="d-flex align-items-center">-->
                            <!--        <a class="nav-link position-relative <?php echo e(request()->is(@$storeinfo->slug.'/cart') ? 'active' : ''); ?> <?php echo e(request()->is('cart') ? 'active' : ''); ?>" href="<?php echo e(URL::to(@$storeinfo->slug . '/cart')); ?>">-->
                            <!--            <span>-->
                            <!--                <?php echo e(trans('labels.my_cart')); ?>-->
                            <!--            </span>-->
                            <!--            <a class="cart-counting mx-2" id="cartcount"><?php echo e(helper::getcartcount($storeinfo->id, @Auth::user()->id)); ?></a>-->
                            <!--        </a>-->
                            <!--    </div>-->
                            <!--</li>-->


                            <?php if(App\Models\SystemAddons::where('unique_identifier', 'customer_login')->first() != null &&
                            App\Models\SystemAddons::where('unique_identifier', 'customer_login')->first()->activated == 1): ?>

                            <?php if(Auth::user() ): ?>
                            <li class="nav-item dropdown header-dropdown-menu px-4 d-flex align-items-center d-lg-none">
                                <a class="nav-link position-relative" href="<?php echo e(URL::to($storeinfo->slug . '/profile/')); ?>">
                                    <span>
                                        <?php echo e(trans('labels.profile')); ?>

                                    </span>
                                </a>
                            </li>
                            <li class="nav-item dropdown header-dropdown-menu px-4 d-flex align-items-center d-lg-none">
                                <a class="nav-link position-relative" href="<?php echo e(URL::to($storeinfo->slug . '/logout/')); ?>">
                                    <span>
                                        <?php echo e(trans('labels.logout')); ?>

                                    </span>
                                </a>
                            </li>

                            <a href="" class="login-button-mobile login-buuton d-lg-none"><i class="fa fa-user ms-3"></i> <?php echo e(Auth::user()->name); ?></a>
                            <?php else: ?>
                            <a href="<?php echo e(URL::to($storeinfo->slug . '/login/')); ?>" class="login-button-mobile login-buuton d-lg-none"><?php echo e(trans('labels.login')); ?></a>
                            <?php endif; ?>

                            <?php endif; ?>

                        </ul>
                    </nav>

                    <?php if(App\Models\SystemAddons::where('unique_identifier', 'language')->first() != null &&
                    App\Models\SystemAddons::where('unique_identifier', 'language')->first()->activated == 1): ?>

                    <div class="btn-group">
                        <a class="nav-link d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="<?php echo e(helper::image_path(session()->get('flag'))); ?>" alt="" class="language-dropdown-image">
                        </a>
                        <ul class="dropdown-menu user-dropdown-menu <?php echo e(session()->get('direction') == 2 ? 'drop-menu-rtl' : 'drop-menu'); ?>">

                            <?php $__currentLoopData = helper::listoflanguage(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languagelist): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>
                                <a class="dropdown-item language-items d-flex text-start" href="<?php echo e(URL::to('/lang/change?lang=' . $languagelist->code)); ?>">
                                    <img src="<?php echo e(helper::image_path($languagelist->image)); ?>" alt="" class="language-items-img">
                                    <span class="px-2"><?php echo e($languagelist->name); ?></span>
                                </a>
                            </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                        </ul>
                    </div>

                    <?php endif; ?>


                    <?php if(App\Models\SystemAddons::where('unique_identifier', 'customer_login')->first() != null &&
                    App\Models\SystemAddons::where('unique_identifier', 'customer_login')->first()->activated == 1): ?>

                    <?php if(Auth::user() ): ?>
                    <a class="nav-link d-flex align-items-center mx-2 mx-md-0 d-none d-lg-block text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="<?php echo e(helper::image_path(@Auth::user()->image)); ?>" alt="" class="profile_image">
                    </a>
                    <ul class="dropdown-menu user-dropdown-menu">
                        <li>
                            <a class="dropdown-item language-items" href="<?php echo e(URL::to($storeinfo->slug . '/profile/')); ?>">
                                <i class="fa fa-user"></i>
                                <p><?php echo e(trans('labels.profile')); ?></p>
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item language-items" href="<?php echo e(URL::to($storeinfo->slug . '/logout/')); ?>">
                                <i class="fa-solid fa-right-from-bracket"></i>
                                <p><?php echo e(trans('labels.logout')); ?></p>
                            </a>
                        </li>

                    </ul>
                    <?php else: ?>
                    <a href="<?php echo e(URL::to($storeinfo->slug . '/login/')); ?>" class="login-buuton d-none d-lg-block"><?php echo e(trans('labels.login')); ?></a>
                    <?php endif; ?>
                    <?php endif; ?>
                </div>
            </div>
            <div class="bg-layer"></div>
        </div>
    </div>

</header>


    
    
<!-- MODAL-INFORMATION -->
<div class="modal fade" id="infomodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">
                 Información
                </h5>

                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-between align-items-center">
                    <h5><?php echo e($storeinfo->name??''); ?></h5>
                   </div>
                 <div class="d-block d-md-flex align-items-center justify-content-center pb-3">  
                 <div class="ml-lg-0 text-center text-md-end">
                    <?php if(helper::appdata($storeinfo->id)->contact): ?>
                        <a href="tel:<?php echo e(helper::appdata($storeinfo->id)->contact); ?>" target="_blank" style="font-size: 15px; !important">
                            <i class="fa fa-phone"></i> <?php echo e(' '.helper::appdata($storeinfo->id)->contact); ?>

                        </a>
                    <?php endif; ?>   &nbsp;&nbsp;&nbsp;

                    <a href="https://www.google.com/maps/place/323/<?php echo e(helper::appdata($storeinfo->id)->address); ?>" target="_blank" style="font-size: 15px; !important">
                        <i class="fa-light fa-location-dot"></i> <?php echo e(' '.helper::appdata($storeinfo->id)->address); ?>

                    </a>
                    </div>
                 </div>
                
                <div class="d-block d-md-flex align-items-center justify-content-center pb-3">
            
                    <div class="ml-lg-0 text-center text-md-end">
                        <a class="btn btn-outline m-1 border-0 facebook" role="button"
                            href="<?php echo e(helper::appdata($storeinfo->id)->facebook_link); ?>"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline m-1 border-0"
                            href="<?php echo e(helper::appdata($storeinfo->id)->twitter_link); ?>" role="button"><i
                                class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline m-1 border-0" href="<?php echo e(helper::appdata($storeinfo->id)->linkedin_link); ?>"
                            role="button"><i class="fa-brands fa-linkedin"></i></a>
                        <a class="btn btn-outline m-1 border-0"
                            href="<?php echo e(helper::appdata($storeinfo->id)->instagram_link); ?>" role="button"><i
                                class="fab fa-instagram"></i></a>
                    </div>
                </div>
                
                <div class="business-sec">
                    <div class="delivery-title">
                        <div class="mb-1">
                            <h5 class="border-bottom pb-2 mb-2"><span
                                class="checkoutform-title">Tipos de servicio</span>
                            </h5>
                        </div>
                    </div>
                    
                    
                    
                    <div class="d-flex justify-content-center align-items-center">
                        <?php if($delivery_types): ?>
                            <?php $__currentLoopData = $delivery_types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $delivery_type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($delivery_type == 1): ?>
                                    <div class="mb-1 payment-check d-flex cp">
                                        <label class="px-3 py-2 option-label cp text-start d-flex align-items-center" style="border: 1px solid rgba(0,0,0,0.3); border-radius: 50px;">
                                            <img src="<?php echo e(url(env('ASSETSPATHURL') . '/front/images/order_delivery.png')); ?>" alt="delivery" style="width: 25px !important;">
                                            <span class="px-2"><?php echo e(trans('labels.delivery')); ?></span>
                                        </label>
                                    </div>
                                    <br>&nbsp;
                                <?php endif; ?>
                                <?php if($delivery_type == 2): ?>
                                    <div class="mb-1 payment-check d-flex cp">
                                        <label class="px-3 py-2 option-label cp text-start d-flex align-items-center" style="border: 1px solid rgba(0,0,0,0.3); border-radius: 50px;">
                                            <img src="<?php echo e(url(env('ASSETSPATHURL') . '/front/images/pickup.png')); ?>" alt="delivery" style="width: 25px !important;">
                                            <span class="px-2"><?php echo e(trans('labels.pickup')); ?></span>
                                        </label>
                                    </div>
                                <?php endif; ?>
                                <?php if($delivery_type == 3): ?>
                                    <div class="mb-1 payment-check d-flex cp">
                                        <label class="px-3 py-2 option-label cp text-start d-flex align-items-center" style="border: 1px solid rgba(0,0,0,0.3); border-radius: 50px;">
                                            <img src="<?php echo e(url(env('ASSETSPATHURL') . '/front/images/dining_table.png')); ?>" alt="delivery" style="width: 25px !important;">
                                            <span class="px-2"><?php echo e(trans('labels.table')); ?></span>
                                        </label>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div> 
                    
                    <div class="delivery-title">
                        <div class="mt-3">
                            <h5 class="border-bottom pb-2 mb-2"><i class="fa-light fa-clock"></i><span
                                class="px-2 checkoutform-title">Horas Laborales</span>
                            </h5>
                        </div>
                    </div>
                    <div class="working-hours">
                        <ul class="list-group border-0 bg-none p-0">
                            <?php if(is_array(@helper::timings($storeinfo->id)) || is_object(@helper::timings($storeinfo->id))): ?>
                                <?php $__currentLoopData = @helper::timings($storeinfo->id); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $time): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class="list-group-item d-flex border-0 default-color">
                                        <p class="fw-semibold col-6 ">
                                            <i class="fa-solid fa-calendar-days"></i>
                                            <span class="px-2"><?php echo e($time->day); ?></span>
                                        </p>
                                        <div class="col-6 d-flex justify-content-center">
                                            <p class="text-center">
                                                <?php if($time->is_always_close == 1): ?>
                                                    <span class="text-danger"><?php echo e(trans('labels.closed')); ?></span>
                                                <?php else: ?>
                                                    <span><?php echo e($time->open_time . ' ' . trans('labels.to') . ' ' . $time->close_time); ?></span>
                                                <?php endif; ?>
                                            </p>
                                        </div>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <script>
        // Get the modal
        var modal = document.getElementById("customModal");

        // Get the button that opens the modal
        var btn = document.getElementById("storeStatusBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close");

        // When the user clicks the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "flex";
        }

        // When the user clicks on <span> (x), close the modal
        for (var i = 0; i < span.length; i++) {
            span[i].onclick = function() {
                modal.style.display = "none";
            }
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

<style>
    /*search*/
    .contSearch {
        position: fixed;
        right: 0;
        /*top: calc(50% - 103px);*/
        top: calc(50% - 45px);
        padding:10px;
        z-index: 2000;
        /*height: 50px;*/
        border-radius: 8px 0 0 8px;
        cursor: pointer;
    }
    
    @media (max-width: 1200px) {
      .contSearch {
        display: none; /* Hide the element */
      }
    }
    
    
body.open_floating_cart {
  overflow-y: hidden;
}


.floating_cart {
  position: fixed;
  background: #FFF;
  width: 400px;
  max-width: 90%;
  height: 100%;
  top: 0;
  right: 0;
  box-shadow: -2px 0 4px rgba(0, 0, 0, 0.2);
  overflow: hidden;
  transform: translate(500px, 0);
  transition: transform 250ms ease-in-out;
  z-index: 99999;
}

body.open_floating_cart .floating_cart {
  transform: translate(0, 0);
}

.floating_cart__header {
  box-sizing: border-box;
  width: 100%;
  padding: 15px 15px;
  overflow: hidden;
  border-bottom: 1px solid rgba(0,0,0,0.1);
}
.floating_cart__header .floating_cart__text {
  float: right;
}

.floating_cart__title {
  font-size: 20px;
  line-height: 40px;
  margin: 0;
  float: left;
}


.floating_cart__empty {
  padding: 30px 15px;
  margin: 0;
  font-style: italic;
  text-align: center;
}
.floating_cart__empty.hide {
  display: none;
}

.floating_cart__footer {
  box-sizing: border-box;
  position: absolute;
  background: rgba(255, 255, 255, 0.9);
  width: 100%;
  padding: 15px;
  left: 0;
  bottom: 0;
  z-index: 2;
  
  text-align: right;
}

.floating_cart__text {
  margin: 0;
}

.lightbox {
  position: fixed;
  background: #000;
  width: 0;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 10;
  opacity: 0;
  transition: opacity 250ms ease-in-out, width 0ms ease-in-out 250ms;
}

body.open_floating_cart .lightbox {
  width: 100%;
  opacity: 0.4;
  transition: opacity 250ms ease-in-out, width 0ms ease-in-out;
}

</style>

<div class="contSearch has-transition js-toggle-cart" style="background-color: var(--bs-primary);" id="floating_cart_btn">
    <div class="d-none d-xl-block align-self-stretch mr-0 has-transition h-100"
        data-hover="dropdown">
        <div class="nav-cart-box dropdown h-100" id="cart_items" style="width: max-content;">
            <a href="javascript:void(0)" class="d-flex align-items-center text-dark h-100 justify-content-center" data-toggle="dropdown" data-display="static" title="<?php echo e(trans('labels.my_cart')); ?>">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="20.562" viewBox="0 0 24 20.562" style="width:20px">
                        <g id="_5e67fc94b53aaec8ca181b806dd815ee" data-name="5e67fc94b53aaec8ca181b806dd815ee" transform="translate(-33.276 -101)">
                          <path id="Path_32659" data-name="Path 32659" d="M34.034,102.519H38.2l-.732-.557c.122.37.243.739.365,1.112q.441,1.333.879,2.666.528,1.6,1.058,3.211.46,1.394.917,2.788c.149.451.291.9.446,1.352l.008.02a.76.76,0,0,0,1.466-.4c-.122-.37-.243-.739-.365-1.112q-.441-1.333-.879-2.666-.528-1.607-1.058-3.213-.46-1.394-.917-2.788c-.149-.451-.289-.9-.446-1.352l-.008-.02a.783.783,0,0,0-.732-.557H34.037a.76.76,0,0,0,0,1.519Z" fill="#fff"/>
                          <path id="Path_32660" data-name="Path 32660" d="M288.931,541.934q-.615,1.1-1.233,2.193c-.058.106-.119.21-.177.317a.767.767,0,0,0,.656,1.142h11.6c.534,0,1.071.01,1.608,0h.023a.76.76,0,0,0,0-1.519h-11.6c-.534,0-1.074-.015-1.608,0h-.023l.656,1.142q.615-1.1,1.233-2.193c.058-.106.119-.21.177-.316a.759.759,0,0,0-1.312-.765Z" transform="translate(-247.711 -429.41)" fill="#fff"/>
                          <circle id="Ellipse_553" data-name="Ellipse 553" cx="1.724" cy="1.724" r="1.724" transform="translate(49.612 117.606)" fill="#fff"/>
                          <path id="Path_32661" data-name="Path 32661" d="M658.4,739.2a2.267,2.267,0,0,0,1.489,2.1,2.232,2.232,0,0,0,2.433-.648A2.231,2.231,0,1,0,658.4,739.2a.506.506,0,0,0,1.013,0c0-.041,0-.084.005-.124a.381.381,0,0,1,.005-.053c.008-.1,0,.033-.005.03a.979.979,0,0,1,.061-.248c.008-.02.023-.106.04-.111s-.046.094-.018.043a.656.656,0,0,0,.028-.061,2.3,2.3,0,0,1,.129-.215c.048-.073-.068.078.013-.015.025-.028.051-.058.078-.086s.056-.056.084-.081l.038-.033c.018-.015.091-.051.025-.023s-.015.013,0,0,.035-.025.056-.038a.947.947,0,0,1,.086-.051c.038-.023.078-.041.119-.061.013-.008.066-.033,0,0s.025-.008.033-.01A1.56,1.56,0,0,1,660.4,738l.068-.013c.056-.013-.048.005-.048.005.046,0,.094-.01.139-.01a2.043,2.043,0,0,1,.248.008c.094.008-.1-.018.02.005.046.008.089.02.134.03s.076.023.114.035a.589.589,0,0,1,.063.023c0,.008-.094-.048-.043-.018.071.043.149.076.22.122.018.013.035.025.056.038s.056.023,0,0-.018-.015,0,0l.051.043a2.274,2.274,0,0,1,.172.177c.076.084-.035-.058.013.015.02.033.043.063.063.1s.041.068.058.1l.023.046c.048.091.01-.008,0-.013.03.01.063.192.073.225l.023.1c.02.1,0-.03,0-.033.013.013.008.071.008.086a1.749,1.749,0,0,1,0,.23.63.63,0,0,0-.005.071c0,.051-.03.043.005-.03a.791.791,0,0,0-.028.134c-.018.071-.046.139-.066.21s.046-.086.013-.028a.245.245,0,0,0-.02.046c-.02.041-.041.078-.063.117s-.041.066-.063.1c-.068.1.048-.051-.01.018a1.932,1.932,0,0,1-.172.18c-.01.01-.071.076-.089.076,0,0,.1-.071.023-.02-.015.01-.028.018-.041.028-.071.046-.144.084-.218.122s.091-.03-.018.008l-.111.038-.116.03c-.018,0-.033.008-.051.01-.111.025.081-.005.015,0a2.045,2.045,0,0,1-.248.01c-.041,0-.081-.005-.124-.008-.015,0-.076-.008,0,0s-.018-.005-.035-.008a1.912,1.912,0,0,1-.261-.076c-.015-.005-.066-.03,0,0s-.015-.008-.03-.015c-.041-.02-.078-.041-.117-.063s-.073-.048-.111-.073c-.061-.038.008.02.023.02-.01,0-.043-.035-.051-.043a1.872,1.872,0,0,1-.187-.187.3.3,0,0,1-.043-.051c0,.01.061.086.02.023-.025-.038-.051-.073-.073-.111s-.048-.089-.071-.132c-.053-.1.025.081-.015-.033a1.836,1.836,0,0,1-.073-.263.163.163,0,0,0-.01-.051c.038.084.008.071,0,.013s-.008-.106-.008-.16a.513.513,0,0,0-1.026,0Z" transform="translate(-609.293 -619.872)" fill="#fff"/>
                          <circle id="Ellipse_554" data-name="Ellipse 554" cx="1.724" cy="1.724" r="1.724" transform="translate(40.884 117.606)" fill="#fff"/>
                          <path id="Path_32662" data-name="Path 32662" d="M270.814,272.355a2.267,2.267,0,0,0,1.489,2.1,2.232,2.232,0,0,0,2.433-.648,2.231,2.231,0,1,0-3.922-1.453.506.506,0,0,0,1.013,0c0-.041,0-.084.005-.124a.377.377,0,0,1,.005-.053c.008-.1,0,.033-.005.03a.981.981,0,0,1,.061-.248c.008-.02.023-.106.04-.111s-.046.094-.018.043a.656.656,0,0,0,.028-.061,2.3,2.3,0,0,1,.129-.215c.048-.073-.068.079.013-.015.025-.028.051-.058.078-.086s.056-.056.084-.081l.038-.033c.018-.015.091-.051.025-.023s-.015.013,0,0,.035-.025.056-.038a.96.96,0,0,1,.086-.051c.038-.023.078-.04.119-.061.013-.008.066-.033,0,0s.025-.008.033-.01a1.564,1.564,0,0,1,.213-.061l.068-.013c.056-.013-.048.005-.048.005.046,0,.094-.01.139-.01a2.031,2.031,0,0,1,.248.008c.094.008-.1-.018.02.005.046.008.089.02.134.03s.076.023.114.035a.583.583,0,0,1,.063.023c0,.008-.094-.048-.043-.018.071.043.149.076.22.122.018.013.035.025.056.038s.056.023,0,0-.018-.015,0,0l.051.043a2.257,2.257,0,0,1,.172.177c.076.084-.035-.058.013.015.02.033.043.063.063.1s.04.068.058.1l.023.046c.048.091.01-.008,0-.013.03.01.063.192.073.225l.023.1c.02.1,0-.03,0-.033.013.013.008.071.008.086a1.749,1.749,0,0,1,0,.23.622.622,0,0,0-.005.071c0,.051-.03.043.005-.03a.788.788,0,0,0-.028.134c-.018.071-.046.139-.066.21s.046-.086.013-.028a.249.249,0,0,0-.02.046c-.02.04-.041.078-.063.116s-.041.066-.063.1c-.068.1.048-.051-.01.018a1.929,1.929,0,0,1-.172.18c-.01.01-.071.076-.089.076,0,0,.1-.071.023-.02-.015.01-.028.018-.041.028-.071.046-.144.084-.218.122s.091-.03-.018.008l-.111.038-.116.03c-.018,0-.033.008-.051.01-.111.025.081-.005.015,0a2.039,2.039,0,0,1-.248.01c-.041,0-.081-.005-.124-.008-.015,0-.076-.008,0,0s-.018-.005-.035-.008a1.919,1.919,0,0,1-.261-.076c-.015-.005-.066-.03,0,0s-.015-.008-.03-.015c-.04-.02-.078-.04-.116-.063s-.073-.048-.111-.073c-.061-.038.008.02.023.02-.01,0-.043-.035-.051-.043a1.873,1.873,0,0,1-.187-.187.3.3,0,0,1-.043-.051c0,.01.061.086.02.023-.025-.038-.051-.073-.073-.111s-.048-.089-.071-.132c-.053-.1.025.081-.015-.033a1.84,1.84,0,0,1-.073-.263.164.164,0,0,0-.01-.051c.038.084.008.071,0,.013s-.008-.106-.008-.16a.513.513,0,0,0-1.026,0ZM287.2,258l-3.074,7.926H272.313L269.7,258Z" transform="translate(-230.437 -153.024)" fill="#fff"/>
                          <path id="Path_32663" data-name="Path 32663" d="M267.044,237.988q-.52,1.341-1.038,2.682-.828,2.138-1.654,4.274l-.38.983.489-.372H254.1c-.476,0-.957-.02-1.436,0h-.02l.489.372q-.444-1.348-.886-2.694-.7-2.131-1.4-4.264c-.109-.327-.215-.653-.324-.983l-.489.641h16.791c.228,0,.456.005.681,0h.03a.506.506,0,0,0,0-1.013H250.744c-.228,0-.456-.005-.681,0h-.03a.511.511,0,0,0-.489.641q.444,1.348.886,2.694.7,2.131,1.4,4.264c.109.327.215.653.324.983a.523.523,0,0,0,.489.372h10.359c.476,0,.957.018,1.436,0h.02a.526.526,0,0,0,.489-.372q.52-1.341,1.038-2.682.828-2.138,1.654-4.274l.38-.983a.508.508,0,0,0-.355-.623A.52.52,0,0,0,267.044,237.988Z" transform="translate(-210.769 -133.152)" fill="#fff"/>
                        </g>
                    </svg>
                    <span class="cart-counting mx-2" id="cartcount2"><?php echo e(helper::getcartcount($storeinfo->id, @Auth::user()->id)); ?></span> 
            </a>
            <p class="text-white"><?php echo e(trans('labels.item')); ?></p>
        </div>
    </div>
</div>

<div class="lightbox js-lightbox js-toggle-cart"></div>



<aside class="floating_cart js-cart">
  <div class="floating_cart__header">
    <h1 class="floating_cart__title d-flex justify-content-center align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="20.562" viewBox="0 0 24 20.562" style="width:20px">
            <g id="_5e67fc94b53aaec8ca181b806dd815ee" data-name="5e67fc94b53aaec8ca181b806dd815ee" transform="translate(-33.276 -101)">
              <path id="Path_32659" data-name="Path 32659" d="M34.034,102.519H38.2l-.732-.557c.122.37.243.739.365,1.112q.441,1.333.879,2.666.528,1.6,1.058,3.211.46,1.394.917,2.788c.149.451.291.9.446,1.352l.008.02a.76.76,0,0,0,1.466-.4c-.122-.37-.243-.739-.365-1.112q-.441-1.333-.879-2.666-.528-1.607-1.058-3.213-.46-1.394-.917-2.788c-.149-.451-.289-.9-.446-1.352l-.008-.02a.783.783,0,0,0-.732-.557H34.037a.76.76,0,0,0,0,1.519Z" fill="#181d32"/>
              <path id="Path_32660" data-name="Path 32660" d="M288.931,541.934q-.615,1.1-1.233,2.193c-.058.106-.119.21-.177.317a.767.767,0,0,0,.656,1.142h11.6c.534,0,1.071.01,1.608,0h.023a.76.76,0,0,0,0-1.519h-11.6c-.534,0-1.074-.015-1.608,0h-.023l.656,1.142q.615-1.1,1.233-2.193c.058-.106.119-.21.177-.316a.759.759,0,0,0-1.312-.765Z" transform="translate(-247.711 -429.41)" fill="#181d32"/>
              <circle id="Ellipse_553" data-name="Ellipse 553" cx="1.724" cy="1.724" r="1.724" transform="translate(49.612 117.606)" fill="#181d32"/>
              <path id="Path_32661" data-name="Path 32661" d="M658.4,739.2a2.267,2.267,0,0,0,1.489,2.1,2.232,2.232,0,0,0,2.433-.648A2.231,2.231,0,1,0,658.4,739.2a.506.506,0,0,0,1.013,0c0-.041,0-.084.005-.124a.381.381,0,0,1,.005-.053c.008-.1,0,.033-.005.03a.979.979,0,0,1,.061-.248c.008-.02.023-.106.04-.111s-.046.094-.018.043a.656.656,0,0,0,.028-.061,2.3,2.3,0,0,1,.129-.215c.048-.073-.068.078.013-.015.025-.028.051-.058.078-.086s.056-.056.084-.081l.038-.033c.018-.015.091-.051.025-.023s-.015.013,0,0,.035-.025.056-.038a.947.947,0,0,1,.086-.051c.038-.023.078-.041.119-.061.013-.008.066-.033,0,0s.025-.008.033-.01A1.56,1.56,0,0,1,660.4,738l.068-.013c.056-.013-.048.005-.048.005.046,0,.094-.01.139-.01a2.043,2.043,0,0,1,.248.008c.094.008-.1-.018.02.005.046.008.089.02.134.03s.076.023.114.035a.589.589,0,0,1,.063.023c0,.008-.094-.048-.043-.018.071.043.149.076.22.122.018.013.035.025.056.038s.056.023,0,0-.018-.015,0,0l.051.043a2.274,2.274,0,0,1,.172.177c.076.084-.035-.058.013.015.02.033.043.063.063.1s.041.068.058.1l.023.046c.048.091.01-.008,0-.013.03.01.063.192.073.225l.023.1c.02.1,0-.03,0-.033.013.013.008.071.008.086a1.749,1.749,0,0,1,0,.23.63.63,0,0,0-.005.071c0,.051-.03.043.005-.03a.791.791,0,0,0-.028.134c-.018.071-.046.139-.066.21s.046-.086.013-.028a.245.245,0,0,0-.02.046c-.02.041-.041.078-.063.117s-.041.066-.063.1c-.068.1.048-.051-.01.018a1.932,1.932,0,0,1-.172.18c-.01.01-.071.076-.089.076,0,0,.1-.071.023-.02-.015.01-.028.018-.041.028-.071.046-.144.084-.218.122s.091-.03-.018.008l-.111.038-.116.03c-.018,0-.033.008-.051.01-.111.025.081-.005.015,0a2.045,2.045,0,0,1-.248.01c-.041,0-.081-.005-.124-.008-.015,0-.076-.008,0,0s-.018-.005-.035-.008a1.912,1.912,0,0,1-.261-.076c-.015-.005-.066-.03,0,0s-.015-.008-.03-.015c-.041-.02-.078-.041-.117-.063s-.073-.048-.111-.073c-.061-.038.008.02.023.02-.01,0-.043-.035-.051-.043a1.872,1.872,0,0,1-.187-.187.3.3,0,0,1-.043-.051c0,.01.061.086.02.023-.025-.038-.051-.073-.073-.111s-.048-.089-.071-.132c-.053-.1.025.081-.015-.033a1.836,1.836,0,0,1-.073-.263.163.163,0,0,0-.01-.051c.038.084.008.071,0,.013s-.008-.106-.008-.16a.513.513,0,0,0-1.026,0Z" transform="translate(-609.293 -619.872)" fill="#181d32"/>
              <circle id="Ellipse_554" data-name="Ellipse 554" cx="1.724" cy="1.724" r="1.724" transform="translate(40.884 117.606)" fill="#181d32"/>
              <path id="Path_32662" data-name="Path 32662" d="M270.814,272.355a2.267,2.267,0,0,0,1.489,2.1,2.232,2.232,0,0,0,2.433-.648,2.231,2.231,0,1,0-3.922-1.453.506.506,0,0,0,1.013,0c0-.041,0-.084.005-.124a.377.377,0,0,1,.005-.053c.008-.1,0,.033-.005.03a.981.981,0,0,1,.061-.248c.008-.02.023-.106.04-.111s-.046.094-.018.043a.656.656,0,0,0,.028-.061,2.3,2.3,0,0,1,.129-.215c.048-.073-.068.079.013-.015.025-.028.051-.058.078-.086s.056-.056.084-.081l.038-.033c.018-.015.091-.051.025-.023s-.015.013,0,0,.035-.025.056-.038a.96.96,0,0,1,.086-.051c.038-.023.078-.04.119-.061.013-.008.066-.033,0,0s.025-.008.033-.01a1.564,1.564,0,0,1,.213-.061l.068-.013c.056-.013-.048.005-.048.005.046,0,.094-.01.139-.01a2.031,2.031,0,0,1,.248.008c.094.008-.1-.018.02.005.046.008.089.02.134.03s.076.023.114.035a.583.583,0,0,1,.063.023c0,.008-.094-.048-.043-.018.071.043.149.076.22.122.018.013.035.025.056.038s.056.023,0,0-.018-.015,0,0l.051.043a2.257,2.257,0,0,1,.172.177c.076.084-.035-.058.013.015.02.033.043.063.063.1s.04.068.058.1l.023.046c.048.091.01-.008,0-.013.03.01.063.192.073.225l.023.1c.02.1,0-.03,0-.033.013.013.008.071.008.086a1.749,1.749,0,0,1,0,.23.622.622,0,0,0-.005.071c0,.051-.03.043.005-.03a.788.788,0,0,0-.028.134c-.018.071-.046.139-.066.21s.046-.086.013-.028a.249.249,0,0,0-.02.046c-.02.04-.041.078-.063.116s-.041.066-.063.1c-.068.1.048-.051-.01.018a1.929,1.929,0,0,1-.172.18c-.01.01-.071.076-.089.076,0,0,.1-.071.023-.02-.015.01-.028.018-.041.028-.071.046-.144.084-.218.122s.091-.03-.018.008l-.111.038-.116.03c-.018,0-.033.008-.051.01-.111.025.081-.005.015,0a2.039,2.039,0,0,1-.248.01c-.041,0-.081-.005-.124-.008-.015,0-.076-.008,0,0s-.018-.005-.035-.008a1.919,1.919,0,0,1-.261-.076c-.015-.005-.066-.03,0,0s-.015-.008-.03-.015c-.04-.02-.078-.04-.116-.063s-.073-.048-.111-.073c-.061-.038.008.02.023.02-.01,0-.043-.035-.051-.043a1.873,1.873,0,0,1-.187-.187.3.3,0,0,1-.043-.051c0,.01.061.086.02.023-.025-.038-.051-.073-.073-.111s-.048-.089-.071-.132c-.053-.1.025.081-.015-.033a1.84,1.84,0,0,1-.073-.263.164.164,0,0,0-.01-.051c.038.084.008.071,0,.013s-.008-.106-.008-.16a.513.513,0,0,0-1.026,0ZM287.2,258l-3.074,7.926H272.313L269.7,258Z" transform="translate(-230.437 -153.024)" fill="#181d32"/>
              <path id="Path_32663" data-name="Path 32663" d="M267.044,237.988q-.52,1.341-1.038,2.682-.828,2.138-1.654,4.274l-.38.983.489-.372H254.1c-.476,0-.957-.02-1.436,0h-.02l.489.372q-.444-1.348-.886-2.694-.7-2.131-1.4-4.264c-.109-.327-.215-.653-.324-.983l-.489.641h16.791c.228,0,.456.005.681,0h.03a.506.506,0,0,0,0-1.013H250.744c-.228,0-.456-.005-.681,0h-.03a.511.511,0,0,0-.489.641q.444,1.348.886,2.694.7,2.131,1.4,4.264c.109.327.215.653.324.983a.523.523,0,0,0,.489.372h10.359c.476,0,.957.018,1.436,0h.02a.526.526,0,0,0,.489-.372q.52-1.341,1.038-2.682.828-2.138,1.654-4.274l.38-.983a.508.508,0,0,0-.355-.623A.52.52,0,0,0,267.044,237.988Z" transform="translate(-210.769 -133.152)" fill="#181d32"/>
            </g>
        </svg>
        <span class="cart-counting mx-2" id="cartcount3"><?php echo e(helper::getcartcount($storeinfo->id, @Auth::user()->id)); ?></span> 
        <span style="font-size:0.92rem"><?php echo e(trans('labels.item')); ?></span>
    </h1>
    <!--<p class="floating_cart__text">-->
    <!--  <a class="js-toggle-cart btn btn-sm btn-outline-danger light" href="#" title="Close cart">-->
    <!--    <i class="fas fa-close"></i>-->
    <!--  </a>-->
    <!--</p>-->
  </div>
  <div class="px-2" id="floating_cart_container">
        <?php echo $__env->make('front.partials.cart', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  </div>
  
</aside>

<!--------------- mobile menu Section start ------------------>

<div class="mobile-menu-footer  d-lg-none">
    <ul class="d-flex align-items-center mobile-menu-active p-0 m-0">
        <li class="nav-link position-relative">
            <a class="<?php echo e(request()->is(@$storeinfo->slug) ? 'active' : ''); ?> <?php echo e(request()->is('/') ? 'active' : ''); ?>" href="<?php echo e(URL::to(@$storeinfo->slug)); ?>">
                <i class="fa-light fa-house"></i>
                <span class="act-8"><?php echo e(trans('labels.home')); ?></span>
            </a>
        </li>
        <li class="nav-link position-relative">
            <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#searchModal">
                <i class="fa-light fa-search"></i>
                <span class="act-8"><?php echo e(trans('labels.search')); ?></span>
            </a>
        </li>
        <?php if(request()->route()->getName() == 'front.home'): ?>
        <li class="nav-link position-relative">
            <a href="javascript:void(0)" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom">
                <i class="fa-light fa-box-archive"></i>
                <span class="act-8"><?php echo e(trans('labels.menu')); ?></span>
            </a>
        </li>
        <?php endif; ?>
        <li class="nav-link position-relative">
            <a href="<?php echo e(URL::to(@$storeinfo->slug . '/cart')); ?>" class="<?php echo e(request()->is(@$storeinfo->slug.'/cart') ? 'active' : ''); ?>">
                <i class="fa-light fa-bag-shopping position-relative">
                    <div class="cart-3 mx-2 d-lg-none " id="cartcount_mobile"><?php echo e(helper::getcartcount($storeinfo->id, @Auth::user()->id)); ?></div>
                </i>
                <span><?php echo e(trans('labels.menu_cart')); ?></span>
            </a>
        </li>
        <li class="nav-link position-relative">
            <a href="javascript:void(0)" class="togl-btn text-dark toggle_button">
                <i class="fa-light fa-ellipsis-vertical fs-6"></i>
                <span><?php echo e(trans('labels.more')); ?></span>
            </a>
        </li>
    </ul>
</div>
<!--------------- mobile menu Section End ------------------>

<?php echo $__env->make('cookie-consent::index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\catalogo_whatsapp\resources\views/front/theme/header.blade.php ENDPATH**/ ?>