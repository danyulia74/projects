<?php 
$title = "Home";
include_once("../sections/header.php");
// var_dump($_COOKIE);
// echo $_COOKIE["isLogin"] . "as";
?>
<body>
  <div id="header">
    <h3>Created by Yulia Solodovnikova</h3>	
    <hr>		
    <h4>Tel: +1(613)-413-6726</h4>
    <h4>Ottawa, 111 Elgin St.</h4>
  </div>  

  <div id="header-content">
    <h3>Yulia CoffeeShop</h3> <br />
    <img src="../Images/Coffee/images_shop.jpg" width=80%>             
  </div>
  <!--Menu-->
  <?php include_once("../sections/menu.php")?>

  <div class="column1">
    <div class="section1">
      <h3><span class="orange-text">Welcome to Our website!</span></h3>
      <p><strong>Click on any of the 🅱uttons above to go to different sections.</strong></p>
    </div>

    <div class="section2">
      <h3><span>Parts of this website</span></h3>
      <p><strong>There are five different parts of this website: Home,About us,Coffee,Our Gallery and Management</strong></p>
    </div>

    <div class="section3">
      <h3><span>Home and About Us</span></h3>
      <p><strong>This section contains basic information about our CoffeShop</strong></a></p>
    </div>
  </div>

  <div class="column2">
    <div class="item active"><img src="../Images/Coffee/cafe.png"></div>
  </div>

  <div class="column3">
    <h3><span>Management</span></h3>
    <p><strong>This is an Admin page</strong></p>
            
    <h3><span>Coffee</span></h3>
    <p><strong>You can choose our coffee</strong></p>
        
    <h3><span>Our Gallery</span></h3>
    <p><strong>There, you can find Our Gallery</strong></p>
  </div>        
</body>
</html>