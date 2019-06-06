<?php
$username = $_POST["username"];
$password = $_POST["password"];

$host = '127.0.0.1';
$db   = 'coffeedb';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$user = 'root';
$pass = '';

$options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
$options[PDO::ATTR_DEFAULT_FETCH_MODE] = PDO::FETCH_ASSOC;
$options[PDO::ATTR_EMULATE_PREPARES] = false;

try {
  $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
  throw new PDOException($e->getMessage(), (int)$e->getCode());
}

$sql = 'SELECT * FROM users where username=?';
$page_query = $pdo->prepare($sql);
$page_query->execute([$username]);
$page_data = $page_query->fetchall();



if(isset($page_data[0]["password"]) && isset($password)){
    if(strcasecmp($page_data[0]["password"], $password) == 0){
        setcookie("isLogin", 10, time()+60*60*24*30);
    }
}

header('Location: management.php');