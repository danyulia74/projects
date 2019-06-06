<?php
$title = "Coffee";
include_once("../sections/header.php");
include_once("../sections/menu.php");
?>
<br>
<?php
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

$sql = 'SELECT * FROM coffee';
$page_query = $pdo->prepare($sql);
$page_query->execute();
$page_data = $page_query->fetchall();
?>
<div class="shop">
  <h2 class="shop-title">My Shop:</h2>

    <table>       
      <?php foreach($page_data as $data):?>
        <tr>
          <td class="shop-image" width="30%">
            <a href="shop.php?id= <?php echo $data["id"]?>" >
              <img style="width:350px;height:350px;" src="../<?php echo $data["image"];?>">
            </a>
          </td>

          <td>
            <a class="coffee-name" href="shop.php?id= <?php echo $data["id"]?>" >
              <h2><?php echo $data["name"];?></h2>
            </a>
          </td>
        </tr>
      <?php endforeach; ?>
    </table> 
</div>