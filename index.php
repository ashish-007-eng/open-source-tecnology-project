<?php
$servername="localhost";
$username="admin";
$password="admin007";
$db="apartment";
$con=mysqli_connect($servername,$username,$password,$db);
?>

<html>
<head>
<title>Apartment Tracker...</title>
<style>
body
{
margin:0px;
padding:0px;
}
p
{
font-size: 55;
 color:white;
text-align:center;
padding-bottom:150px
}
.main
{
  width:100%;
margin: 0 auto;
}

#one
{
  
  background-image: url("4.jpeg");
  height: 100%;
  margin:0px;
 padding-top:50px;
 background-repeat: no-repeat;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 21px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width:58%;
  background: #f1f1f1;
}
form.example select
{
padding:20px;
font-size:17px;
border:1px solid grey;
float:left;
color:grey;
width:22%;
background: #f1f1f1;

}
form.example button {
  float: left;
  width: 20%;
  padding: 20px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}

</style>

</head>

<body>
<div class='main'>
<div id='one'>
<p>APARTMENT TRACKER..</p>

<form name='form'class="example" method='post' style="margin:auto;max-width:700px">
  <input type="text" placeholder="Location..." name="location" required>
 <select name="r_type">
<option>1BHK</option>
<option >2BHK</option>
<option>3BHK</option>
<option selected>Room Type</option>
</select>

  <button type="submit" name='search'>Search..</button>
</form>
<?php

session_start();
     if(isset($_POST['search']))
     {
$location=$_POST['location'];
$r_type=$_POST['r_type'];
		 $query="SELECT * FROM t1 WHERE location='$location' and r_type='$r_type' ";
		 $query_run=mysqli_query($con,$query);
		 $result = mysqli_fetch_array($query_run);
		 if($result>0)
		 {
			 header("location:exp.php?location=".$_REQUEST['location']."&r_type=".$_REQUEST['r_type']."");
		 }
	else
	{
				//invalid
		echo '<script type="text/javascript">alert("EITHER FIELD IS EMPTY OR LOCTION IS NOT MATCHED.....")</script>';
	}
	 }

?>
</div>

</body>
</html>
