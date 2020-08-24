<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hiking";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if(isset($_POST["register"]))
{
     if(
     empty($_POST['username'])||
     empty($_POST['email'])||
     empty($_POST['password'])||
     empty($_POST['firstName'])||
     empty($_POST['midName'])||
     empty($_POST['lastName'])||
     empty($_POST['address'])||
     empty($_POST['age'])||
     empty($_POST['phoneNumber'])||
     empty($_POST['role'])
     )
     {
         echo"<script>alert('fill the empty spaces');</script>";
     }
     else{
     
    $sql="insert into user
    (
        userName,
        email,
        password,
        firstName,
        midName,
        lastName,
        address,
        age,
        phoneNumber,
        role
        ) 
        VALUES
        (
            '".$_POST["username"]."',
            '".$_POST['email']."',
            '".$_POST["password"]."',
            '".$_POST['firstName']."',
            '".$_POST['midName']."',
            '".$_POST['lastName']."',
            '".$_POST['address']."',
            '".$_POST['age']."',
            '".$_POST['phoneNumber']."',
            '".$_POST['role']."'
        )";
    echo $sql;
    $result=mysqli_query($conn, $sql);
    if($result)
    {
        echo"inserted well";
    }
    else{
        echo $sql;
    }
} 
 
}

?>