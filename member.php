<!DOCTYPE html>
<html lang="en">
<head>
	<title>ADD NEW MEMBER</title>
	</head>
	<body>
		<header>
			<h1>MEMBER</h1>
			<h3>Please enter below details to add a new member : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="ssn">SSN</label>
			<input type="text" name="ssn" id="ssn">
			</div>

			<div>
				<label for id="type">TYPE</label>
			<input type="text" name="type" id="type">				
			</div>

			<div>
				<label for id="name">NAME</label>
			<input type="text" name="name" id="name">				
			</div>

			<div>
				<label for id="contact_no">CONTACT NO</label>
			<input type="text" name="contact_no" id="contact_no">				
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


$ssn = $_POST['ssn'];
$type = $_POST['type'];
$name = $_POST['name'];
$contact_no = $_POST['contact_no'];

$sql = "INSERT INTO member(ssn,type,name,contact_no)VALUES ('$ssn','$type','$name','$contact_no');"; 

if ($conn->query($sql) === TRUE) {
        echo "Member Info Added Successfully";
      } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            echo "Unable to add Member information !!!";
          }
}
?> 
