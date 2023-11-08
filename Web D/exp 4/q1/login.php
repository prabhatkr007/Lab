<!-- login.php -->
<?php
session_start();

$valid_username = "admin"; 
$valid_password = "12345"; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if ($username === $valid_username && $password === $valid_password) {
        $_SESSION['username'] = $username;
        header("Location: index.php"); 
    } else {
        echo "Invalid username or password. <a href='login.html'>Try again</a>";
    }
} else {
    include 'login.html';
}
?>
