<?php
    session_start();
    include 'includes/admin.inc.php';

    // Get the order_id from GET or session
    $order_id = isset($_GET['order_id']) ? $_GET['order_id'] : '';
    if (!$order_id) {
        // Handle the case when order_id is not provided
        echo "No order ID provided.";
        exit;
    }

    // Fetch order details for the specific user
    $user_order = new Order();
    $user_order_details = $user_order->get_order($order_id);
    $user_order_details = $user_order_details->fetch_assoc();

    // Fetch order items for the specific order
    $order_items = $user_order->get_items($order_id);
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="icon" href="tab.png" type="image/x-icon">
    <title>AUTOHAVEN</title>
</head>
<body>
    <div class="order-all">
        <div class="heading">
            <h1><a href="javascript:history.back();"><i class="fas fa-angle-double-left"></i></a><img src="logo.png" alt="Your Logo" class="logo"> <span> Admin </span> </h1>
        </div>

        <div class="user-info">
            <h3>Client details</h3>
            <?php
                echo '
                <h4><i class="fas fa-user"></i> '.$user_order_details['username'].'</h4>
                <h4><i class="fas fa-envelope"></i> '.$user_order_details['email'].'</h4>
                ';
                echo '
                <h4><i class="fas fa-map-marker-alt"></i> '.$user_order_details['address'].' | '.$user_order_details['city'].'</h4>
                <h4><i class="fas fa-mobile-alt"></i> '.$user_order_details['phone'].'</h4>
                <h4><i class="fas fa-mail-bulk"></i> '.$user_order_details['postal_code'].'</h4>
                ';
            ?>
        </div>

        <div class="order-container">
            <h3>Order details</h3>
            <div class="items">
                <?php
                while($row = $order_items->fetch_assoc()){
                    $product_1 = $row['product_id'];
                    $product_2 = $row['product_id2'];

                    if($product_1 == -1){
                        $item = new Product();
                        $item = $item->get_product($product_2);
                        $item = $item->fetch_assoc();

                        echo '
                        <div class="item">
                            <img src="assets/Product_images/'.$item['image'].'">
                            <h5 class="item-name">'.$item['model'].'</h5>
                            <h5 class="item-name">'.$item['manufacturer'].'</h5>
                            <h6 class="item-price">$'.$item['price'].'</h6>
                        </div>
                        ';
                    } else {
                        $item = new Car();
                        $item = $item->get_car($product_1);
                        $item = $item->fetch_assoc();

                        echo '
                        <div class="item">
                            <img src="assets/Car_images/'.$item['image'].'">
                            <h5 class="item-name">'.$item['model'].'</h5>
                            <h5 class="item-name">'.$item['manufacturer'].'</h5>
                            <h6 class="item-price">$'.$item['price'].'</h6>
                        </div>
                        ';
                    }
                }
                ?>
            </div>
        </div>
    </div>
</body>
</html>
