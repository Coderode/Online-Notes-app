<?php
//Connect to the database
//this file is to maintain the connection data
//enter here the database connection details
$link = mysqli_connect("host","database username","database password","database name");
if(mysqli_connect_error()){
    die("ERROR: Unable to connect:".mysqli_connect_error());
    echo "<script>window.alert('Hi!')</script>";
}
?>
