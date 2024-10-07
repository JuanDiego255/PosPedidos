<?php

namespace App\Helpers;

use App\Models\Settings;

class EmailHelper
{
    public static function emailConfiguration($vendorId)
    {
        // Obtenemos la configuración de correo electrónico según el vendorId
        if ($vendorId) {
            return Settings::where('vendor_id', $vendorId)->first();
        } else {
            return Settings::first();
        }
    }
}
