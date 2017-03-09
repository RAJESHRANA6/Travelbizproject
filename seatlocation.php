<?php
include('db.php');//Here we link seat allocation with our database
$id=$_GET['id']; // search query by id
$result = mysql_query("SELECT * FROM route WHERE id='$id'");
while($row = mysql_fetch_array($result))
	{
	$seatnum=$row['numseats']; //if condition is matched we will get seatnum
	}
?>
Bus Layout <br>
<div style="border:1px solid red; padding:10px 5px; border-radius:5px; width: 136px;">
<?php
$N = $seatnum+1;
for($i=1; $i < $N; $i++)
{
echo '<input type="button" style="border:none; width:23px; padding:2px; margin:2px;" value="'.$i.'" />';
}
?>
</div>