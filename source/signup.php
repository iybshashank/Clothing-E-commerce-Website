<?php      
    include('connection.php');  
    $susername = $_POST['username']; 
    $semail = $_POST['signupemail'];    
    $spassword = $_POST['signuppassword'];  
      
        //to prevent from mysqli injection  
        $susername = stripcslashes($susername);
        $semail = stripcslashes($semail); 
        $spassword = stripcslashes($spassword);  
          
        $semail = mysqli_real_escape_string($con, $semail); 
        $spassword = mysqli_real_escape_string($con, $spassword);  
      
        $sql = "INSERT INTO signup (sname,semail, spassword) VALUES ('$susername','$semail', '$spassword')";  

        

        if ($con->query($sql) === TRUE) {
            header('Location: index.html');
            exit;
        } 
        else {
            ?>
            <<script type='text/javascript'> 
    alert('Email address already exists.')
    window.location.href = "index.html"; 
    </script>
<?php     
            
                }
?>