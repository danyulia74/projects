<?php
$title = "Shop";
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

$id = $_GET["id"];
$sql = 'SELECT * FROM coffee where id=?';
$page_query = $pdo->prepare($sql);
$page_query->execute([$id]);
$page_data = $page_query->fetchall();
?>
<div class="shop cart">
  <h2 class="shop-title"><?php echo $page_data[0]["name"]; ?></h2>
 
  <table>       
      <tr> 
        <td  width="30%">
            <a href="shop.php?id= <?php echo $page_data[0]["id"];?>" >
                <img style="width:350px;height:350px;" src="../<?php echo $page_data[0]["image"];?>">
            </a>
        </td>
        <td  width="50%">
            <span>Price:</span>
            <span class="item"><?php echo $page_data[0]["price"];?></span>
            <br>
            <span>Roast:</span>
            <span class="item"><?php echo $page_data[0]["roast"];?>   </span> 
            <br>
            <span>Country:</span>
            <span class="item"><?php echo $page_data[0]["country"];?>  </span>  
            <br>
            <span>Review:</span>
            <span class="item"><?php echo $page_data[0]["review"];?></span>
            <br>
            <button>Add to cart</button>
        </td>
      </tr>
  </table> 
  </div>