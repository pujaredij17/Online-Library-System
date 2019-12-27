<!DOCTYPE html>
<html lang="en">
<head>
	<title>ADD NEW BOOKS</title>
	</head>
	<body>
		<header>
			<h1>BOOKS</h1>
			<h3>Please enter below details to add a new book : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="isbn">ISBN</label>
			<input type="text" name="isbn" id="isbn">
			</div>

			<div>
				<label for id="author">AUTHOR</label>
			<input type="text" name="author" id="author">				
			</div>

			<div>
				<label for id="title">TITLE</label>
			<input type="text" name="title" id="title">				
			</div>

			<div>
				<label for id="subject_area">SUBJECT AREA</label>
			<input type="text" name="subject_area" id="subject_area">				
			</div>

			<div>
				<label for id="copy">No of Copies</label>
			<input type="text" name="copy" id="copy">				
			</div>

			<div>
				<label for id="descr">Book Description</label>
			<input type="text" name="descr" id="descr" maxlength="256">				
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


$isbn = $_POST['isbn'];
$author = $_POST['author'];
$title = $_POST['title'];
$subject_area = $_POST['subject_area'];
$copy = $_POST['copy'];
$descr = $_POST['descr'];



$sql = "INSERT INTO books(isbn,author,title,subject_area,no_of_copies,book_description)VALUES ('$isbn','$author','$title','$subject_area','$copy','$descr');"; 

if ($conn->query($sql) === TRUE) {
        echo "Book Info Added Successfully";
      } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            echo "Unable to add Book information !!!";
          }
}
?> 
