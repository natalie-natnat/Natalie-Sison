<?php 

include "config.php";
session_start();

  
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] !== true){
    header("location: welcome.php");
    exit;
}


$_SESSION["verify"] = false;
$_SESSION["code_access"] = false;
  
 
 
if($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['username'])){
        $user = $_POST['username'];
    }

    date_default_timezone_set('Asia/Manila');
    $currentDate = date('Y-m-d H:i:s');
    $currentDate_timestamp = strtotime($currentDate);

    $sql_time = "INSERT INTO auditi_trail (username, login_time, logout_time) VALUES ('$user', '$currentDate', '$currentDate')";
    if (mysqli_query($link, $sql_time)) {
                echo "Record updated successfully";
            } 
            else {
                echo "Error updating record: " . mysqli_error($link);
            }
  
    if(empty(trim($_POST["username"]))){
        echo "<script>alert('ENTER USERNAME');</script>";
    } else{
        $username = trim($_POST["username"]);
    }
     
    if(empty(trim($_POST["password"]))){
        echo "<script>alert('ENTER PASSWORD');</script>";
    } else{
        $password = trim($_POST["password"]);
    }
     
    if(empty($username_err) && empty($password_err)){ 
        $sql = "SELECT id, username, password FROM users WHERE username = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){ 
            mysqli_stmt_bind_param($stmt, "s", $param_username);
             
            $param_username = $username;
             
            if(mysqli_stmt_execute($stmt)){ 
                mysqli_stmt_store_result($stmt);
                 
                if(mysqli_stmt_num_rows($stmt) == 1){ 
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($password, $hashed_password)){

                            if(isset($_POST['username'])){
                                $user = $_POST['username'];
                            }
                            $_SESSION['username'] = $user;
                            $_SESSION["verify"] = true;
                            $_SESSION["code_access"] = true;
                            
                            $_SESSION["id"] = $id;
                            header("location: verification.php");
                            

                        } else{ 
                             
                            echo "<script>alert('PASSWORD ERROR');</script>";
                        }
                    }
                } else{ 
                    echo "<script>alert('USERNAME IS NOT EXIST');</script>";
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}
?>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
   <style>
body{
background:url(background.jpg) no-repeat center center fixed;
}
.wrapper{
    margin-top: 230px;
    margin-left:550px;
    height:250px;
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
       
    <div class="wrapper">
        <h2>Login</h2>
        <?php if (isset($_GET['error'])) { ?>
               <p class="error"><?php echo $_GET['error']; ?></p>
          <?php } ?>
      
        
        <form action="" method="post">
            <div class="next">
            <div class="form-group">
                <label>Username:</label>
                <input type="text" name="username" class="form-control" style="width: 200px; height: 20px;">
                <br>
                <br>
                <label>Password:</label>
                <input type="password" name="password" class="form-control" style="width: 200px; height: 20px;">
            </div>    
            <br>
            <div class="form-group">
                <input type="submit" class="form-control" name="Login" id="Login" value="Login" style="width: 70px; height: 30px; background-color: pink;">  <br>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="resetpass.php">Forgot Password?</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="sign-up-act2.php">Create an account</a> 
            </div>
            
        
            </div>
        </form>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>