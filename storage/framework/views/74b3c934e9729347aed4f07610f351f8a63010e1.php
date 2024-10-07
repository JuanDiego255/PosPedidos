<style>
    .discount-badge {
    position: absolute;
    top: 0;
    left: 0;
    background-color: #ff0000;
    color: #ffffff;
    padding: 5px 10px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    font-size: 15px;
    font-weight: bold;
}

.price-container {
    display: flex;
    align-items: center;
}

.larger-price {
    font-size: 15px; /* Ajusta este valor según tus necesidades */
    font-weight: bold; /* Opcional: para hacer el texto más grueso */
}

.original-price {
    margin-left: 12px; /* Ajusta este valor según tus necesidades */
    color: red; /* Cambia el color a rojo */
    font-size: 1em; /* Ajusta este valor según tus necesidades para que sea más pequeño */
}


</style>



<?php $__currentLoopData = $getcategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php
        $check_cat_count = 0;
    ?>
    <?php $__currentLoopData = $getitem; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if($category->id == $item->cat_id): ?>
            <?php
                $check_cat_count++;
            ?>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php if($check_cat_count > 0): ?>
    <div class="specs theme1grid <?php if($check_cat_count > 0 && $key != 0): ?> card-none <?php endif; ?>" id="specs-<?php echo e($category->id); ?>">
        <div class="row g-2 g-md-3 products-img" >
            <?php if(!$getcategory->isEmpty()): ?>
                <?php $i = 0; ?>
                <?php $__currentLoopData = $getitem; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($category->id == $item->cat_id): ?>
                        <?php 
                            if(@$item['item_image']->image_name != null ) {
                                $image = @$item['item_image']->image_name;
                            } else {
                                $image = $item->image;
                            }

                            // Calcular el porcentaje de descuento
                            $discountPercentage = 0;
                            if ($item->item_original_price && $item->item_price) {
                                $discountPercentage = (($item->item_original_price - $item->item_price) / $item->item_original_price) * 100;
                            }
                        ?>
                        <div class="col-6 col-lg-3">
                            <div class="card h-100 position-relative rounded-xxl">
                                <?php if($discountPercentage > 0): ?>
                                <div class="discount-badge position-absolute bg-danger text-white px-2 py-1 rounded-top-left">
                                    <?php echo e(number_format($discountPercentage, 2)); ?>% OFF
                                </div>
                                <?php endif; ?>
                                <div class="overflow-hidden theme1grid_image">
                                    <img src="<?php if( @$item['item_image']->image_url != null ): ?> <?php echo e(@$item['item_image']->image_url); ?> <?php else: ?> <?php echo e(helper::image_path($item->image)); ?> <?php endif; ?>" alt="" class="p-2 p-md-3 rounded-xxl" onclick="showitems('<?php echo e($item->id); ?>','<?php echo e($item->item_name); ?>','<?php echo e($item->item_price); ?>')">
                                </div>
                                <div class="card-body p-2 p-md-3 pb-0 pb-md-3">
                                    <?php if(Auth::user() ): ?>
                                    <div class="favorite-icon set-fav1-<?php echo e($item->id); ?>">
                                        <?php if($item->is_favorite == 1): ?>
                                            <a href="javascript:void(0)" onclick="managefavorite('<?php echo e($storeinfo->id); ?>','<?php echo e($item->id); ?>',0,'<?php echo e(URL::to('/managefavorite')); ?>','<?php echo e(request()->url()); ?>')"><i class="fa-solid fa-heart"></i></a>
                                        <?php else: ?>
                                            <a href="javascript:void(0)" onclick="managefavorite('<?php echo e($storeinfo->id); ?>','<?php echo e($item->id); ?>',1,'<?php echo e(URL::to('/managefavorite')); ?>','<?php echo e(request()->url()); ?>')"><i class="fa-regular fa-heart"></i></a>
                                        <?php endif; ?>
                                    </div>
                                    <?php endif; ?>
                                    <a href="javascript:void(0)" class="title pb-1" onclick="showitems('<?php echo e($item->id); ?>','<?php echo e($item->item_name); ?>','<?php echo e($item->item_price); ?>')"><?php echo e($item->item_name); ?></a>
                                    <small class="d_sm_none"><?php echo e($item->description); ?></small>
                                </div>
                                <div class="card-footer bg-transparent border-0 p-2 p-md-3 pt-0 pt-md-3">
                                    <div class="row justify-content-between align-items-center gx-0">

<div class="col-sm-9 col-8 col-md-4 mb-2 mb-md-0">
    <div class="price-container" style="display: flex; align-items: center;">
        <p class="price larger-price" style="margin: 0;"> 
            <?php echo e(helper::currency_formate($item->item_price, @$storeinfo->id)); ?>

        </p>
        <?php if($item->item_original_price != null): ?>
            <del class="original-price"><?php echo e(helper::currency_formate($item->item_original_price, @$storeinfo->id)); ?></del>
        <?php endif; ?>
    </div>
</div>




                                        
                                        <div class="col-sm-3 col-4 col-md-8 d-flex justify-content-end mb-2 mb-md-0">
                                            <?php if(helper::getStoreStatus($storeinfo->id) == 'Abierto'): ?>
                                                <?php if($item->has_variants == 1): ?>
                                                    <button class="btn-primary product-cart-icon" type="button"  onclick="showitems('<?php echo e($item->id); ?>','<?php echo e($item->item_name); ?>','<?php echo e($item->item_price); ?>')">
                                                        <i class="fa-solid fa-cart-shopping"></i>
                                                    </button>
                                                <?php else: ?>
                                                    <div class="load showload-<?php echo e($item->id); ?>" style="display:none"></div>
                                                    <!--<button class="btn-primary product-cart-icon addcartbtn-<?php echo e($item->id); ?>" type="button"  onclick="addtocart('<?php echo e($item->id); ?>','<?php echo e($item->item_name); ?>','<?php echo e($item->item_price); ?>','<?php echo e($image); ?>','<?php echo e($item->tax); ?>','1','<?php echo e($item->item_price); ?>')">-->
                                                    <button class="btn-primary product-cart-icon addcartbtn-<?php echo e($item->id); ?>" type="button"  onclick="showitems('<?php echo e($item->id); ?>','<?php echo e($item->item_name); ?>','<?php echo e($item->item_price); ?>')">
                                                        <i class="fa-solid fa-cart-shopping"></i>
                                                    </button>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php $i += 1; ?>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
    </div>
    <?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH /home/davcromc/tienda1.sistemaslvam.com/resources/views/front/template-1/theme-grid.blade.php ENDPATH**/ ?>