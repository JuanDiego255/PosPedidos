<!DOCTYPE html>
<html>
<head>
    <title><?php echo e($title); ?></title>
</head>
<body>
    <div>
        <div style="background:#ffffff;padding:15px">
            <p>Hola <b><?php echo e($vendor_name); ?></b>,</p>

            <p>Has recibido una nueva consulta</p>

            Nombre: <b><?php echo e($full_name); ?></b><br>
            Correo: <b><?php echo e($useremail); ?></b><br>
            Telefono: <b><?php echo e($usermobile); ?></b><br>
            Mensaje: <b><?php echo e($usermessage); ?></b><br>
        </div>
    </div>
</body>
</html><?php /**PATH /home/u244677816/domains/stocky.uno/public_html/ecostore/resources/views/email/vendorcontcatform.blade.php ENDPATH**/ ?>