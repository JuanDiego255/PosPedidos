
<script>
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('whatsapp_button').click();
    // document.getElementById('homeButton').click();
});
</script>

<a id="whatsapp_button" href="https://api.whatsapp.com/send?phone=<?php echo e(helper::appdata($storeinfo->id)->contact); ?>&text=<?php echo e($whmessage); ?>"></a>
<!--<a id="homeButton" href="<?php echo e(url('')); ?>"></a>-->
<?php /**PATH /home/u244677816/domains/stocky.uno/public_html/ecostore/resources/views/front/ordersuccess2.blade.php ENDPATH**/ ?>