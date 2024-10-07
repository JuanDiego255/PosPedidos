<?php $__env->startSection('content'); ?>
<!-- breadcrumb start -->
<div class="breadcrumb-sec">
    <div class="container">
        <nav class="px-2">
            <h3 class="page-title text-white mb-2"><?php echo e(trans('labels.search_products')); ?></h3>
            <ol class="breadcrumb d-flex text-capitalize">
                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>" class="text-white"><?php echo e(trans('labels.home')); ?></a></li>
                <li class="breadcrumb-item active <?php echo e(session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''); ?>"><?php echo e(trans('labels.search_products')); ?></li>
            </ol>
        </nav>
    </div>
</div>
<!-- breadcrumb end -->
<!-- Search Products section end -->
<?php if(count($getsearchitems) > 0): ?>
    <section class="bg-light mt-0 py-5">
        <div class="container">
            <div class="row g-2 g-md-3 products-img" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
                <h3 class="page-title mb-1"><?php echo e(trans('labels.search_products')); ?></h3>
                <p class="page-subtitle line-limit-2 mt-0">
                
                </p>
                <?php $__currentLoopData = $getsearchitems; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $itemdata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                    <?php 
                        if(@$itemdata['item_image']->image_name != null ) 
                        {
                            $image = @$itemdata['item_image']->image_name;
                        }
                        else{
                            $image = $itemdata->image;
                        }
                    ?>
            
                <div class="col-6 col-lg-3 theme1grid">
                    <div class="card h-100 position-relative" data-aos="fade-up" data-aos-delay="150" data-aos-duration="1000" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
                        <div class="overflow-hidden theme1grid_image">
                            <img src="<?php if( @$itemdata['item_image']->image_url != null ): ?> <?php echo e(@$itemdata['item_image']->image_url); ?> <?php else: ?> <?php echo e(helper::image_path($itemdata->image)); ?> <?php endif; ?>" alt="" class="p-2 p-md-3" onclick="showitems('<?php echo e($itemdata->id); ?>','<?php echo e($itemdata->item_name); ?>','<?php echo e($itemdata->item_price); ?>')">
                        </div>
                        <div class="card-body p-2 p-md-3 pb-0 pb-md-3">
                            <?php if(Auth::user() ): ?>
                                <div class="favorite-icon set-fav1-<?php echo e($itemdata->id); ?>">
                                    <?php if($itemdata->is_favorite == 1): ?>
                                    <a href="javascript:void(0)" onclick="managefavorite('<?php echo e($storeinfo->id); ?>','<?php echo e($itemdata->id); ?>',0,'<?php echo e(URL::to('/managefavorite')); ?>')"><i class="fa-solid fa-heart"></i></a>
                                    <?php else: ?>
                                    <a href="javascript:void(0)" onclick="managefavorite('<?php echo e($storeinfo->id); ?>','<?php echo e($itemdata->id); ?>',1,'<?php echo e(URL::to('/managefavorite')); ?>')"><i class="fa-regular fa-heart"></i></a>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>
                            <a href="javascript:void(0)" class="title pb-1" onclick="showitems('<?php echo e($itemdata->id); ?>','<?php echo e($itemdata->item_name); ?>','<?php echo e($itemdata->item_price); ?>')"><?php echo e($itemdata->item_name); ?></a>
                            <small class="d_sm_none"><?php echo e($itemdata->description); ?></small>
                        </div>
                        <div class="card-footer bg-transparent border-0 p-2 p-md-3 pt-0 pt-md-3">
                            <div class="row justify-content-between align-items-center gx-0">
                                <div class="products-price col-9 mb-2 mb-md-0">
                                    <span class="price"><?php echo e(helper::currency_formate($itemdata->item_price,$storeinfo->id)); ?></span>
                                    <del><?php echo e(helper::currency_formate($itemdata->item_original_price,$storeinfo->id)); ?></del>
                                </div>
                            <div class="col-3 d-flex justify-content-end mb-2 mb-md-0">          
                                                      
                                <?php if($itemdata->has_variants == 1): ?>
    
                                <a class="btn-primary product-cart-icon"  onclick="showitems('<?php echo e($itemdata->id); ?>','<?php echo e($itemdata->item_name); ?>','<?php echo e($itemdata->item_price); ?>')">
    
                                    <i class="fa-solid fa-cart-shopping"></i>
    
                                </a>
    
                                <?php else: ?>
    
                                <!--<a class="btn-primary product-cart-icon"  onclick="addtocart('<?php echo e($itemdata->id); ?>','<?php echo e($itemdata->item_name); ?>','<?php echo e($itemdata->item_price); ?>','<?php echo e($image); ?>','<?php echo e($itemdata->tax); ?>','1','<?php echo e($itemdata->item_price); ?>')">-->
                                <a class="btn-primary product-cart-icon"  onclick="showitems('<?php echo e($itemdata->id); ?>','<?php echo e($itemdata->item_name); ?>','<?php echo e($itemdata->item_price); ?>')">
    
                                    <i class="fa-solid fa-cart-shopping"></i>
    
                                </a>
    
                                <?php endif; ?>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
            </div>
        </div>
    </section>
<?php else: ?>
  <?php echo $__env->make('front.nodata', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
<!-- Search Products section end -->
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script src="<?php echo e(url(env('ASSETSPATHURL') . 'web-assets/js/custom/cart.js')); ?>" type="text/javascript"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Sistemas\resources\views/front/search.blade.php ENDPATH**/ ?>