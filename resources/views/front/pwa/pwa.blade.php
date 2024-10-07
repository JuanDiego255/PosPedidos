<meta name="theme-color" content="{{ helper::appdata($storeinfo->id)->theme_color }}">
<meta name="background-color" content="{{ helper::appdata($storeinfo->id)->background_color }}">
<link rel="apple-touch-icon" href="{{ helper::image_path(helper::appdata($storeinfo->id)->app_logo) }}">
<link rel="manifest"
    href='data:application/manifest+json,{"name": "{{ helper::appdata($storeinfo->id)->app_name }}","short_name": "{{ helper::appdata($storeinfo->id)->app_title }}","icons": [{"src": "{{ helper::image_path(helper::appdata($storeinfo->id)->app_logo) }}", "sizes": "512x512", "type": "image/png"}, {"src": "{{ helper::image_path(helper::appdata($storeinfo->id)->app_logo) }}", "sizes": "1024x1024", "type": "image/png"}, {"src": "{{ helper::image_path(helper::appdata($storeinfo->id)->app_logo) }}", "sizes": "1024x1024", "type": "image/png"}], "start_url": "{{ request()->url() }}","display": "standalone","prefer_related_applications":"false" }'>


{{-- Popup --}}
<!--------------- PWA Section start ------------------>
<div class="d-block d-sm-none">
    <nav class="drop-down mobile_drop_down install-app-div" id="install-app">
        <div class="d-flex justify-content-between align-items-center border-bottom install-app-header">
            <h4>{{ helper::appdata(@$storeinfo->id)->website_title }}</h4>
            <p class="nav02 pwa-close-btn">
                <i class="fa-solid fa-xmark fs-5 "></i>
            </p>
        </div>
       
        <div class="p-3">
            <p class="fs-7 pages_subtitle truncate-3 mb-3">{{ trans('labels.pwa_message') }}</p>
            <button class="btn-sm mobile-install-btn w-100" id="mobile-install-app">{{ trans('labels.install') }}</button>
        </div>
    </nav>
</div>
<!--------------- PWA Section End ------------------>