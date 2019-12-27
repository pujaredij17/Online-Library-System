<!DOCTYPE html>
<html lang="en">
<head>
	<title>RETURN BOOK</title>
	</head>
	<body>
		<header>
			<h1>RETURN BOOK</h1>
			<h3>Please enter below details to return a book : </h3>
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
				<label for id="return_date">DATE OF BOOK RETURN</label>
			<input type="date" name="return_date" id="return_date">				
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
$return_date = $_POST['return_date'];
//$expiry_date = date('Y-m-d', strtotime($issue_date. ' + 21 days'));


 $sql1 = "SELECT * FROM member where ssn = '$m_ssn'";
  $result = $conn->query($sql1);

if ($result->num_rows > 0) {

	//$sql = "INSERT INTO issue_status(title,issue_date,expiry_date,m_ssn)VALUES ('$title','$issue_date','$expiry_date','$m_ssn')";
	$sql = "SELECT * FROM return_status, books where return_status.m_ssn= '$m_ssn' and return_status.title = '$title' and return_status.title = books.title";

	$output = $conn->query($sql);


	  if ($output->num_rows > 0) {

	  //	echo "success";
	  	  while($row = $output->fetch_assoc()) {

      $m_ssn = $row["m_ssn"];
      $title = $row["title"];
      $issue_date = $row["issue_date"];
      $isbn = $row["isbn"];
      $author = $row["author"];
      $subject_area = $row["subject_area"];
      $copy = $row["no_of_copies"];
      $descr = $row['book_description'];
    

      ?>

      <!DOCTYPE html>
        <html lang="en">
       
	<body>
		<header>
			<h1>RETURN RECEIPT</h1>
			<h3>Here are the details for your return receipt : </h3>
		</header>

	  	<form method="POST">
			<div>
				<label for id="isbn">ISBN</label>
				<input type="text" name="isbn" id="isbn" value="<?php echo $isbn;?>">
			</div>
			<div>
				<label for id="author">AUTHOR</label>
				<input type="text" name="author" id="author" value="<?php echo $author;?>">
			</div>
			<div>
				<label for id="title">TITLE</label>
				<input type="text" name="title" id="title" value="<?php echo $title;?>">
			</div>
			<div>
				<label for id="subject_area">SUBJECT AREA</label>
				<input type="text" name="subject_area" id="subject_area" value="<?php echo $subject_area;?>">
			</div>
			<div>
				<label for id="copy">No Of Copies</label>
				<input type="text" name="copy" id="copy" value="<?php echo $copy;?>">
			</div>
			<div>
				<label for id="descr">BOOK DESCRIPTION :</label>
				<!--input type="text" name="descr" id="descr" maxlength="1024" value="<?php echo $descr;?>"-->
				 <p><?php echo $descr;?></p>
			</div>
			<div>
				<label for id="issue_date">ISSUE DATE</label>
				<input type="text" name="issue_date" id="issue_date" value="<?php echo $issue_date;?>">				
			</div>
			<div>
				<label for id="return_date">RETURN DATE</label>
				<input type="text" name="return_date" id="return_date" value="<?php echo $return_date;?>">				
			</div>
































<?php
    }
} else {
 echo "0 results";
}
}
else{
	echo "Member does not exist.";
}
}
