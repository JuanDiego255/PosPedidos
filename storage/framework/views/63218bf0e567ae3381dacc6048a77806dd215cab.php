<!-- For Large Devices -->
<style>
     .sidebar .navbar-nav{
        overflow-y: hidden !important;
        height: auto !important;
    }

    .sidebar-content.show_vertical_scroll {
        overflow-y: scroll; /* Use scroll instead of auto for demonstration */
    }

    /* Webkit browsers (Chrome, Safari) */
    .sidebar-content.show_vertical_scroll::-webkit-scrollbar {
        width: 7px;
    }

    .sidebar-content.show_vertical_scroll::-webkit-scrollbar-thumb {
        border-radius: 4px;
        background-color: rgba(0, 0, 0, .5);
        box-shadow: 0 0 1px rgba(255, 255, 255, .5);
    }

    /* Standard browsers */
    .sidebar-content.show_vertical_scroll {
        scrollbar-width: thin; /* Firefox */
        scrollbar-color: rgba(0, 0, 0, .5) rgba(255, 255, 255, .5); /* Firefox */
    }
</style>

<nav class="sidebar sidebar-lgs">
    <div class="d-flex justify-content-center align-items-center mb-3 border-bottom">
        <a class="footer-logo text-white">
            <img class="img-fluid rounded-3 hw-70 object-fit-cover mb-2" src="<?php echo e(helper::image_Path(Auth::user()->image)); ?>" alt="">
        </a>
    </div>
    <div class="sidebar-content show_vertical_scroll">
        <?php echo $__env->make('admin.layout.sidebarcommon', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- Dummy content for testing -->
        
    </div>
</nav>

<style>
/* Style for the sidebar */
.sidebar {
    position: relative;
    width: 250px; /* Adjust this value as needed */
    height: 100vh; /* Full height of the viewport */
    overflow: hidden; /* Hide overflow initially */
}

/* Scrollable container */
.sidebar .sidebar-content {
    height: calc(100vh - 100px); /* Adjust this value for the top margin */
    overflow-y: scroll; /* Ensure vertical scrolling is enabled */
}
</style>
<?php /**PATH /home/u244677816/domains/stocky.uno/public_html/ecostore/resources/views/admin/layout/sidebar.blade.php ENDPATH**/ ?>