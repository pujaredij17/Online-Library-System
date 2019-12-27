<!DOCTYPE html>
<html lang="en">
<head>
	<title>BORROW BOOK</title>
	</head>
	<body>
		<header>
			<h1>BORROW BOOK</h1>
			<h3>Please enter below details to borrow a book : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="m_ssn">SSN</label>
			<input type="text" name="m_ssn" id="m_ssn">
			</div>

			<div>
				<label for id="title">TITLE</label>
			<input type="text" name="title" id="title">				
			</div>

			<div>
				<label for id="issue_date">DATE OF BOOK ISSUE</label>
			<input type="date" name="issue_date" id="issue_date">				
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
$title = $_POST['title'];
$issue_date = $_POST['issue_date'];
$expiry_date = date('Y-m-d', strtotime($issue_date. ' + 21 days'));


 $sql1 = "SELECT * FROM member where ssn = '$m_ssn'";
  $result = $conn->query($sql1);

if ($result->num_rows > 0) {

	$sql = "INSERT INTO issue_status(title,issue_date,expiry_date,m_ssn)VALUES ('$title','$issue_date','$expiry_date','$m_ssn')";
	$sql1 = "INSERT INTO return_status(title,issue_date,expiry_date,m_ssn)VALUES ('$title','$issue_date','$expiry_date','$m_ssn')";
$sql_book_renew = "SELECT expiry_date from return_status where m_ssn = '$m_ssn' and expiry_date < CURRENT_DATE";
       $result_book = $conn->query($sql_book_renew);

      	$sql_member_renew = "SELECT expiry_date from membership where m_ssn = '$m_ssn' and expiry_date < CURRENT_DATE";
      	       $result_member = $conn->query($sql_member_renew);


	  if ($conn->query($sql) === TRUE) {
       echo "Borrowal Info Added Successfully";
      } 

       elseif ($conn->query($sql1) === TRUE) {
        echo "Borrowal Info Added Successfully";
      }       	

      	elseif ($result_book->num_rows > 0) {

            echo "You have an outstanding overdue book, kindly return it to borrow a new book.";
        }

        elseif ($result_member->num_rows > 0) {

        	echo "Your membership has expired, kindly renew your membership to borrow a new book.";

        }

        else{
	echo"lol";
	}
     
	
}
	else
	{
		echo "member does not exist";
	}

}




?> 
