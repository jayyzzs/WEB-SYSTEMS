<?php
	class Cart extends DB {
		// Retrieve cart items for a specific user
		public function get_cart($user_id = "") {
			try {
				$conn = $this->connect();
				if ($user_id == "") {
					$sql = "SELECT * FROM cart";
					$stmt = $conn->prepare($sql);
				} else {
					$sql = "SELECT * FROM cart WHERE user_id=?";
					$stmt = $conn->prepare($sql);
					$stmt->bind_param('s', $user_id);
				}
				$stmt->execute();
				$result = $stmt->get_result();
				$stmt->close();
				return $result;
			} catch (mysqli_sql_exception $e) {
				throw new Exception("Database error: " . $e->getMessage());
			}
		}

		// Add a product to the cart
		public function add_to_cart($product_id, $product_name, $product_price, $user_id, $user_name, $product_model, $user_email, $product_image) {
			try {
				// Validate required fields
				if (empty($product_id) || empty($product_name) || empty($product_price) || empty($user_id)) {
					throw new Exception("Required fields are missing.");
				}

				$conn = $this->connect();
				$sql = "INSERT INTO `cart` (product_name, user_id, product_id, product_price, user_name, product_model, user_email, product_image)
				        VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
				$stmt = $conn->prepare($sql);
				$stmt->bind_param('sssissss', $product_name, $user_id, $product_id, $product_price, $user_name, $product_model, $user_email, $product_image);
				$stmt->execute();
				$stmt->close();
			} catch (mysqli_sql_exception $e) {
				throw new Exception("Database error: " . $e->getMessage());
			} catch (Exception $e) {
				echo "Error: " . $e->getMessage();
			}
		}

		// Delete a specific item from the cart
		public function delete_cart($id) {
			try {
				$conn = $this->connect();
				$sql = "DELETE FROM cart WHERE id=?;";
				$stmt = $conn->prepare($sql);
				$stmt->bind_param('i', $id);
				$stmt->execute();
				$stmt->close();
			} catch (mysqli_sql_exception $e) {
				throw new Exception("Database error: " . $e->getMessage());
			}
		}

		// Add a product to the cart with additional ID field
		public function add_to_cart_product($product_id, $product_name, $product_price, $user_id, $user_name, $product_model, $user_email, $product_image, $product_id_2) {
			try {
				// Validate required fields
				if (empty($product_id) || empty($product_name) || empty($product_price) || empty($user_id)) {
					throw new Exception("Required fields are missing.");
				}

				$conn = $this->connect();
				$sql = "INSERT INTO `cart` (product_name, user_id, product_id, product_price, user_name, product_model, user_email, product_image, product_id_2)
				        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
				$stmt = $conn->prepare($sql);
				$stmt->bind_param('sssisssss', $product_name, $user_id, $product_id, $product_price, $user_name, $product_model, $user_email, $product_image, $product_id_2);
				$stmt->execute();
				$stmt->close();
			} catch (mysqli_sql_exception $e) {
				throw new Exception("Database error: " . $e->getMessage());
			} catch (Exception $e) {
				echo "Error: " . $e->getMessage();
			}
		}
	}
?>
