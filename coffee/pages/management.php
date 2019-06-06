<?php
$title = "Management";
include_once("../sections/header.php");
include_once("../sections/menu.php");
?>



<?php
if($_COOKIE["isLogin"] == 10){
    $content = '<h3 class="title">Coffee</h3>
                <a class="button-man" href="../Includes/coffeeAdd.php">Add a new coffee</a><br/>
                <br>
                <a class="button-man red" href="exit.php">Logout</a><br/>';
    echo $content;
}
else{
    $content = '<br>
    <div class="login-form">
    <form action="login.php" method="post">
        <p>Enter username:</p>    
        <input type="text" name="username">
        <br>
        <p>Enter password:</p>    
        <input type="password" name="password">
        <br>
        <button type="submit">OK</button>
    </form>
    </div>';
    echo $content;
}
?>
