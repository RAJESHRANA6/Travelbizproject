<?php
$mysql_hostname = "localhost";//open local server
$mysql_user = "root";//username of my admin page
$mysql_password = "";//password
$mysql_database = "ticket";//database created with name ticket
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");
?>