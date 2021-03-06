<?php      
    include('connection.php');  
    $username = $_POST['loginemail'];  
    $password = $_POST['loginpassword'];  
      
        //to prevent from mysqli injection  
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($con, $username);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select *from signup where semail = '$username' and spassword = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
             header('Location: homepage.html');
            exit;  
        }  
        else{  
            ?>
            <<script type='text/javascript'> 
    alert('Email and password do not match.')
    window.location.href = "index.html"; 
    </script>
<?php  
        }     
?>