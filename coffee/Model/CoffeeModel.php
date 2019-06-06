<?php

require ("../Entities/CoffeeEntity.php");

//Contains database related code for the Coffee page.
class CoffeeModel {

    //Get all coffee types from the database and return them in an array.
    function GetCoffeeTypes() {
        require ('Credentials.php');
        //Open connection and Select database.   
        $connect = mysqli_connect($host, $user, $passwd) or die(mysql_error());
        mysqli_select_db($connect,$database);
        $result = mysqli_query($connect,"SELECT DISTINCT type FROM coffee") or die(mysql_error());
        $types = array();

        //Get data from database.
        while ($row = mysqli_fetch_array($result)) {
            array_push($types, $row[0]);
        }

        //Close connection and return result.
        mysqli_close($connect);
        return $types;
    }

    function InsertCoffee(CoffeeEntity $coffee) {
        require ('Credentials.php');
        $connect = mysqli_connect($host, $user, $passwd) or die(mysql_error);
        mysqli_select_db($connect,$database);
        $query = sprintf("INSERT INTO coffee
                          (name, type, price,roast,country,image,review)
                          VALUES
                          ('%s','%s','%s','%s','%s','%s','%s')",
                mysqli_real_escape_string($connect,$coffee->name),
                mysqli_real_escape_string($connect,$coffee->type),
                mysqli_real_escape_string($connect,$coffee->price),
                mysqli_real_escape_string($connect,$coffee->roast),
                mysqli_real_escape_string($connect,$coffee->country),
                mysqli_real_escape_string($connect,"Images/Coffee/" . $coffee->image),
                mysqli_real_escape_string($connect,$coffee->review));
        $this->PerformQuery($query);
    }

    function UpdateCoffee($id, CoffeeEntity $coffee) {
        $query = sprintf("UPDATE coffee
                            SET name = '%s', type = '%s', price = '%s', roast = '%s',
                            country = '%s', image = '%s', review = '%s'
                          WHERE id = $id",
                mysql_real_escape_string($coffee->name),
                mysql_real_escape_string($coffee->type),
                mysql_real_escape_string($coffee->price),
                mysql_real_escape_string($coffee->roast),
                mysql_real_escape_string($coffee->country),
                mysql_real_escape_string("Images/Coffee/" . $coffee->image),
                mysql_real_escape_string($coffee->review));
                          
        $this->PerformQuery($query);
    }

    function DeleteCoffee($id) {
        $query = "DELETE FROM coffee WHERE id = $id";
        $this->PerformQuery($query);
    }

    function PerformQuery($query) {
        require ('Credentials.php');
        $connect = mysqli_connect($host, $user, $passwd) or die(mysql_error());
        mysqli_select_db($connect,$database);

        //Execute query and close connection
        mysqli_query($connect,$query) or die(mysql_error());
        mysqli_close($connect);
    }

}

?>
