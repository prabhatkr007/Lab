<!-- logout.php -->
<?php
session_start();
session_destroy();
header("Location: index.php"); // Redirect to home page after logout
?>
