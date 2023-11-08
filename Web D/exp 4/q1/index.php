
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h2>Home Page</h2>
    <?php
    session_start();
    if(isset($_SESSION['username'])){
        echo "<p>Welcome, ".$_SESSION['username']."</p>";
        echo '<a href="logout.php">Logout</a>';
    } else {
        echo '<a href="login.php">Login</a>';
    }
    ?>
</body>
</html>
