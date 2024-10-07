
<script>
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('whatsapp_button').click();
    // document.getElementById('homeButton').click();
});
</script>

<a id="whatsapp_button" href="https://api.whatsapp.com/send?phone={{ helper::appdata($storeinfo->id)->contact }}&text={{ $whmessage }}"></a>
<!--<a id="homeButton" href="{{url('')}}"></a>-->
