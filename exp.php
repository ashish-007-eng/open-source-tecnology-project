<?php
$servername="localhost";
$username="admin";
$password="admin007";
$db="apartment";
$con=mysqli_connect($servername,$username,$password,$db);

?>
<html>
<head>
<title>Apartment Tracker....</title>
<style>
body
{
margin :0px;
}
.main
{
  background-image: url("9.jpeg");
  height: 15%;
  width:60%;
  margin-left:20%;
 padding-top:25px;
 background-repeat: no-repeat;

}
* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width:40%;
  background: #f1f1f1;
}
form.example select
{
padding:9px;
font-size:17px;
border:1px solid grey;
float:left;
width:20%;
color:grey;
background: #f1f1f1;

}
form.example button {
  float: left;
  width: 20%;
  padding: 10px;
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
img:hover {
	transition: .3s ease-in-out;
	opacity: .5;	
}
form.example::after {
  content: "";
  clear: both;
  display: table;
}
label
{
float:left;
padding-top:15px;
font-size:17px;
}
table {
  border-collapse: collapse;
  width: 100%;
  margin-top:30px;
}

th {
 text-aligh:left;
  padding: 20px;
  font-size:18px;
  background-color: #2d2d1f;
  color: white;
}
td
{
	 text-aligh:left;
padding:35px;
}
tr
{
background-color: #f2f2f2;
margin-top:10px;
}
</style>

</head>
<body>
<div class='main'>
<div class='bhk'>
<form class="example" method='post' style="margin:auto;max-width:700px">
<label>Filter: </label>
 <input type="text" placeholder="Location..." name="location" required>
  <select name="r_type">
<option>1BHK</option>
<option>2BHK</option>
<option>3BHK</option>
<option value=''selected>Room Type</option>
</select>

  <button type="submit" name='search'>Search..</button>
</form>
</div>
<div class='con'>

<table>
 <tr>

   <th>Photo</th>
   <th>price</th>
    <th>Address</th>
    <th>Owner Contact Details</th>
  </tr>
  </table>
  <table>
<?php
if(isset($_POST['search']))
     {
$location=$_POST['location'];
$r_type=$_POST['r_type'];
		 $query="SELECT * FROM `t1` WHERE location='$location' and r_type='$r_type' ";
		 $query_run=mysqli_query($con,$query);
		 $result = mysqli_fetch_array($query_run);
		 if($result>0)
		 {
			 header("location:exp.php?location=".$_REQUEST['location']."&r_type=".$_REQUEST['r_type']."");
		 }
	else
	{
				//invalid
		echo '<script type="text/javascript">alert("EITHER FIELD IS EMPTY OR LOCATION IS NOT FOUND..")</script>';
	}
	 }

	 $address=$_GET['location'];
	 $type=$_GET['r_type'];

	  $query1="SELECT t2.postimage,t2.price,t2.address,t2.contact FROM t2
	  WHERE location='$address' and r_type='$type'";
        $query_run1=mysqli_query($con,$query1);
		while($row=mysqli_fetch_array($query_run1))
			        {
					echo"
					<tr>
					<td><a href='img/$row[0]'><img src='img/$row[0]'width='130px' height='130px'><br><br></a>$type</td>
					<td>$row[1]</td>
					<td>$row[2]</td>
                                        <td>$row[3]</td></tr>
					";
					}

?>
</table>
</div>
</div>

</body>
</html>
