<!DOCTYPE html>
<html lang="en">
<head>
	<title>MEMBERSHIP</title>
	</head>
	<body>
		<header>
			<h1>Membership Renewal</h1>
			
		</header>
		<form method="POST">
			<div>
			<label for id="m_ssn">SSN</label>
			<input type="text" name="m_ssn" id="m_ssn">
			</div>

			<div>
				<h3>Click Yes if you want to renew your membersip :  </h3>
			</div>

			<div>
				<label for id="yes">Yes</label>
			<input type="radio" name="yes" id="yes">				
			</div>

			<div>
				<label for id="no">No</label>
			<input type="radio" name="yes" id="no">				
			</div>

			
			<div>
				<input type="submit" name="submit" id="submit" value="submit">
			</div>

		</form>
		
	</body>
	</html>


<?php 

$servername = "localhost";
$username = "root";

// Create connection
$conn = new mysqli($servername, $username ,'','library');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

if (isset($_POST['submit'])){
$m_ssn = $_POST['m_ssn'];
$current_date = date("Y-m-d");
$new_expiry_date = date('Y-m-d', strtotime($current_date. ' + 4 years'));



$sql1 = "SELECT * FROM membership where m_ssn = '$m_ssn'";
$result = $conn->query($sql1);

if ($result->num_rows > 0) {

	  	  while($row = $result->fetch_assoc()) {

	  	  	      $expiry_date = $row["expiry_date"];
	  	  	     // $issue_date = $row["issue_date"];

	  	  	     // echo "success";

	  	  	      if ($expiry_date < $current_date) {

	  	  	      	$sql2 = "UPDATE membership set issue_date = '$current_date' where m_ssn = '$m_ssn'";

	  	  	      	$sql3 = "UPDATE membership set expiry_date = '$new_expiry_date' where m_ssn = '$m_ssn'";

	  	  	      	echo "You membership is expired and the same has been renewed. $new_expiry_date";
	  	  	      }
	  	  	      else{
	  	  	      	echo "You have a valid membership";
	  	  	      }

	  	  	       if ($conn->query($sql2) === TRUE) {
   // echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


	  	  	      if ($conn->query($sql3) === TRUE) {
    //echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



	
}
}

	else
	{
		echo "Sorry! You are not a member of our library. Please fill member form to become a member.";
	}
}
?> 
