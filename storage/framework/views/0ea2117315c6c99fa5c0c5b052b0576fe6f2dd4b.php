<?php $__env->startSection('content'); ?>

<!-- breadcrumb start -->

<div class="breadcrumb-sec">

    <div class="container">

        <nav class="px-2">

            <h3 class="page-title text-white mb-2"><?php echo e(trans('labels.privacy_policy')); ?></h3>

            <ol class="breadcrumb d-flex text-capitalize">

                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>" class="text-white"><?php echo e(trans('labels.home')); ?></a></li>

                <li class="breadcrumb-item active <?php echo e(session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''); ?>"><?php echo e(trans('labels.privacy_policy')); ?></li>

            </ol>

        </nav>

    </div>

</div>

<!-- breadcrumb end -->

<!-- Privacy Policy section end -->

<?php if($privacy != null): ?>

<section class="theme-1-margin-top">

    <div class="container">

        <div class="details row">

            <?php echo @$privacy->privacypolicy_content; ?>


        </div>

    </div>

</section>

<?php else: ?>

    <?php echo $__env->make('front.nodata', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php endif; ?>

<!-- Privacy Policy section end -->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u244677816/domains/stocky.uno/public_html/ecostore/resources/views/front/privacy.blade.php ENDPATH**/ ?>