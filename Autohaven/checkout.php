<?php
    session_start();
    include 'includes/order.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/checkout.css">
		<title>AUTOHAVEN | checkout</title>
	</head>
	<style>

header {
            background-color: #333;
            padding: 20px;
            text-align: center;
        }

        .logo {
            width: 140px; /* Adjust the size of the logo */
        }
	</style>
	<body>
		<div class="all">
			<div class="nav">
				<a href="cart.php"><i class="fas fa-angle-double-left"></i></a><h1>      <img src="logo.png" alt="Your Logo" class="logo"></h1>
			</div>
			<div class="container">
				<h2> Checkout </h2>
				<div class="checkout-info">
					<div id="checkout-flex" class="checkout-form">
						<h3>Client information</h3>
						<form action="checkout.php" method="post">
							<input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>"><br>
							<input type="text" name="address" placeholder="Address..."><br>
							<input type="text" name="city" placeholder="City..."><br>
							<input type="text" name="phone" placeholder="Phone..."><br>
							<input type="text" name="postal_code" placeholder="Postal code..."><br>
							<button type="submit" name="order-submit" class="order-submit-btn"> Place order</button><br>
						</form>
					</div>
					<div id="checkout-flex" class="checkout-details">
						<h3 style="margin-bottom: 35px;">Checkout information</h3>
						<h4>Total: PHP <?php echo $total; ?></h4>
						<h4>Total items: <?php echo $count; ?></h4>
					</div>
				</div>
			</div>
		</div>
		<footer>
	
		  <div class="credit">
		  	<h1>AUTOHAVEN</h1>
		  </div>
		</footer>
	</body>
</html>
