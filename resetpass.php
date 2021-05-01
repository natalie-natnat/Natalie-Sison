<?php
include 'config.php';
    if(isset($_POST['submit'])){
        if(isset($_POST['username'])){
        $user = $_POST['username'];
        }
        if(isset($_POST['password1'])){
        $pass1 = $_POST['password1'];
        }
        if(isset($_POST['password2'])){
        $pass2 = $_POST['password2'];
        }

        if($pass1 == $pass2){

            $hashed_password = password_hash($pass1, PASSWORD_DEFAULT);
            $sql = "UPDATE users SET password='$hashed_password' WHERE username='$user'";

            if (mysqli_query($link, $sql)) {
                echo "Record updated successfully";
            } 
            else {
                echo "Error updating record: " . mysqli_error($link);
            }
        }
        else if($pass1 != $pass2){
            echo "Password did not match. Re-enter Password.";
        }
        else{
            echo "Error";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RESET PASSWORD</title>
   <style>
body{
background:url(background.jpg) no-repeat center center fixed;
}
.wrapper{
    margin-top: 200px;
    margin-left:550px;
    height:300px;
    width:300px;
    border-style: solid;
    border-width: 1px;
    text-align: center;
    padding:20px 20px;
    background-color: rgba(0,0,0,0.7);
    color: pink;
    border-radius: 10px;


</style>
</head>  
<body>
    <a href="login.php"> << BACK <<  </a>
       
    <div class="wrapper">
        <h2>Reset Password</h2>
      
        
        <form action="" method="post">
            <div class="next">
            <div class="form-group">
                <label>Username:</label><br>
                <input type="text" name="username" id="username" class="form-control" style="width: 200px; height: 20px;">
                <br>
                <br>
                <label>Enter New Password:</label>
                <input type="password" name="password1" id="password1" class="form-control" style="width: 200px; height: 20px;">
                <br>
                <br>
                <label>Re-Enter New Password:</label>
                <input type="password" name="password2" id="password2" class="form-control" style="width: 200px; height: 20px;">
            </div>    
            <br>
            <div class="form-group">
                <input type="submit" id="submit" name="submit" value="submit" style="width: 70px; height: 30px; background-color: pink;">  <br>
                <br>
            </div>
            
        
            </div>
        </form>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>