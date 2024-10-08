<?php $__env->startSection('content'); ?>
    <div class="row justify-content-between align-items-center mb-3">
        <div class="col-12">
            <h5 class="pages-title fs-2"><?php echo e(trans('labels.share')); ?></h5>
            <?php echo $__env->make('admin.layout.breadcrumb', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
    <div class="row mb-7">
        <div class="col-sm-12">
            <div class="card border-0 box-shadow mb-5 pb-5 md-md-0 pb-md-0">
                <div class="card-body">
                    <div class="card-block d-block d-md-flex align-items-center">
                        <?php
                        $isMob = is_numeric(strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'mobile'));
                        ?>
                        <div class="d-flex justify-content-center">
                            <img class="qr-codeimg" src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>&choe=UTF-8"
                                title="Link to Google.com" />
                        </div>
                        <div class="card-block">
                            <div class="d-block d-md-flex mb-2">
                                <div class="w-100 mb-2 mb-md-0">
                                    <?php if($isMob == '1'): ?>
                                        <a href="whatsapp://send/send?text=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>"
                                            target="_blank"
                                            class="btn btn-social whatsappcolor w-100"><i
                                                class="fa-brands fa-whatsapp text-wa-color"></i>
                                            <?php echo e(trans('labels.whatsapp')); ?></a>
                                    <?php else: ?>
                                        <a href="https://web.whatsapp.com/send?text=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>"
                                            target="_blank"
                                            class="btn btn-social whatsappcolor w-100"><i
                                                class="fa-brands fa-whatsapp text-wa-color"></i>
                                            <?php echo e(trans('labels.whatsapp')); ?></a>
                                    <?php endif; ?>
                                </div>
                                <div class="w-100">
                                    <a href="https://www.facebook.com/sharer.php?u=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>"
                                        target="_blank"
                                        class="btn btn-social mx-0 mx-md-2  w-100 facebookcolor w-100"><i
                                            class="fa-brands fa-facebook text-fb-color"></i>
                                        <?php echo e(trans('labels.facebook')); ?>

                                    </a>
                                </div>
                            </div>
                            <div class="d-block d-md-flex">
                                <div class="w-100 mb-2 mb-md-0">
                                    <a href="http://twitter.com/share?text=<?php echo e(Auth::user()->name); ?>&url=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>&hashtags=restaurant,whatsapporder,onlineorder"
                                        target="_blank"
                                        class="btn btn-social twittercolor w-100"><i
                                            class="fa-brands fa-twitter text-tw-color"></i>
                                        <?php echo e(trans('labels.twitter')); ?>

                                    </a>
                                </div>
                                <div class="w-100 mb-2 mb-md-0">
                                    <a href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo e(URL::to('/')); ?>/<?php echo e(Auth::user()->slug); ?>"
                                        target="_blank"
                                        class="btn btn-social mx-0 mx-md-2 linkedincolor w-100"><i
                                            class="fa-brands fa-linkedin text-ld-color"></i>
                                        <?php echo e(trans('labels.linkedin')); ?>

                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\restropro\resources\views/admin/otherpages/share.blade.php ENDPATH**/ ?>