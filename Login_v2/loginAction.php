<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hiking";

$conn = new mysqli($servername, $username, $password, $dbname);

if (isset($_POST['login']))
{
    $sql="select * from user where 
    email='".$_POST['email']."' 
    and password='".$_POST['password']."' ";
    $result = mysqli_query($conn,$sql);	

    if($row=mysqli_fetch_array($result))	
	{
    $sql1="select role from staff where 
    userID='".$row["userID"]."'";
    $result1 = mysqli_query($conn,$sql1);	
      $_SESSION["userID"]=$row["userID"];
      $_SESSION["email"]=$row["email"];
      if($row1=mysqli_fetch_array($result1)){
        $_SESSION['Role']=$row1['role'];
      }
      //header("Location:home.php");
      echo"<script>alert('login successfully');</script>";
      
	}
	else	
	{
		echo "Invalid Email or Password or the account is unapproved";
	}
}

?>