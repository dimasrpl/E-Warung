<?php
session_start();
?>

<?php

 // This script is used to determine the order status of the latest customer order id
 // This script is used as part of the live track order page to asynchrounsly update the page reflecting the order status

 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "CouCou";
	  
 // Create connection
 $conn = new mysqli($servername, $username, $password, $dbname);

 // get session email
 $email = $_SESSION["emailAddress"];
 $customerID = "";

 // get customer id using the customer's email address
 $sql = "SELECT customerID FROM Customer WHERE email='$email'";
 $result = mysqli_query($conn, $sql);

 if (mysqli_num_rows($result) > 0)
 {
	 while($row = mysqli_fetch_assoc($result))
	 {
		 // store the customer id
		 $customerID = $row["customerID"];
	 }
 }
	 
 // query order status of latest order generated by the customer
 // if status is ordered then num = 0.2
 // if status is preparing then num = 0.4
 // if status is cooking then num  = 0.6
 // if status is out for delivery then num = 0.8
 // if status is delivered then num = 1.0
 // output the relevant num response based on the order status

 $qry = "SELECT orderStatus, MAX(orderID) FROM Orders WHERE customerID = '$customerID'";
 $res = mysqli_query($conn, $qry);

 if (mysqli_num_rows($result) > 0)
 {
	while($row = mysqli_fetch_assoc($res))
	{
		if ($row["orderStatus"] == "Ordered")
		{
			echo "0.2";
		}
		
		if ($row["orderStatus"] == "Preparing")
		{
			echo "0.4";
		}
		
				
		if ($row["orderStatus"] == "Cooking")
		{
			echo "0.6";
		}
		
		if ($row["orderStatus"] == "Out for Delivery")
		{
			echo "0.8";
		}
			
		if ($row["orderStatus"] == "Delivered")
		{
			echo "1.0";
		}
	}
}
?>