<?php
//Connect to the database
//this file is to maintain the connection data
$link = mysqli_connect("localhost","swingoff_note","OORb3K6K5t","swingoff_onlinenotes");
if(mysqli_connect_error()){
    die("ERROR: Unable to connect:".mysqli_connect_error());
    echo "<script>window.alert('Hi!')</script>";
}
?>