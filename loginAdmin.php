<?php

session_start();

$host = "localhost";
$user = "root";
$password = "Mysql@31106";
$db = "unvdb";

$link = mysqli_connect($host,$user,$password,$db,3307);



if (isset($_POST['email'])){
    $email =  $_POST['email'];
    $password = $_POST['password'];
    


    $sql = "select * from admin where email = '".$email."' AND pass = '".$password."'";

    $result = mysqli_query($link,$sql);

    $rowcount = mysqli_num_rows($result);


    if ($email!='' and $password!='') {

        if ($rowcount == true) {
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
            header('location: welcomeAdmin.php');

        } else {
            echo "<script>alert('you have entered incorrect email address or password')</script>";
        }
    }
    else{
        echo "<script>alert('please enter username and password')</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
     <!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="css/style3.css" type="text/css" >

<!-- JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script> -->

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light navCol">
  <div class="collapse navbar-collapse " id="navbarNav">
    <ul class="navbar-nav">
      
    <li class="nav-item">
        <a class="nav-link " id="icol" href="index.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " id="icol" href="loginStudent.php">Student</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="icol" href="loginTeacher.php">Teacher</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="icol" href="loginAdmin.php">Admin</a>
      </li>
      
    </ul>
  </div>
</nav>


<table style="width:100%">
<tr>
</td width="10%">

</td>

<td width="15%">
    <div class="">
<img src="https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/IIT_Kharagpur_Logo.svg/1200px-IIT_Kharagpur_Logo.svg.png">
</div>
</td>
<td width="30%">

<center>
<p>Please enter credentials for signing in.</p>
<div class="login">

<form action="loginAdmin.php" method="POST">

<div class="uk-margin">
    <div class="uk-inline">
        <span class="uk-form-icon " uk-icon="icon: user"></span>
        <input class="uk-input inputlog" type="email" name="email" value="" required>
    </div>
</div>

<div class="uk-margin">
    <div class="uk-inline">
        <span class="uk-form-icon " uk-icon="icon: lock"></span>
        <input class="uk-input inputlog"  type="password" name="password" value="" required>
    </div>
</div>
<div class="uk-margin">
    <div class="uk-inline">
    <button type="submit" class="uk-button butlog">logIn</button>
    </div>
</div>

</form>
</div>
</center>

</td>


</tr>
</table>

</body>
</html>