<title>SAMedicine</title>
<table width='100%'>
<tr><td>
<?
// Подключаемся к БД 
include "../config/config.php"; 
$client_id=$_GET['client'];
$event_id=$_GET['event'];
$type_id=$_GET['type'];

$ActionPropertyType = mysql_query("select * from ActionPropertyType;");	
$ActionProperty = mysql_query("select * from ActionProperty");

$event_type = mysql_query("select * from EventType;");
$event = mysql_query("select * from Event where id=$event_id;");
   while($sel = mysql_fetch_array($event)){
$begDate = $sel['begDate'];
$endDate = $sel['endDate'];
$number = $sel['number'];

}

?>
<form method = "post">
<table>
<tr><td>
<?php

echo "<button type='sumbit' name='button3' formaction='write_event.php?client=$client_id&event=$event_id&type=$type_id'>Мед.Карта</button>
<button type='sumbit' name='button4' formaction='amount.php?client=$client_id&event=$event_id&type=$type_id'>Оплата</button>"
?>
</td></tr>
<tr><td>
<?
   echo "<table border='1' width='100%' height='100%'>";
   echo '<thead>';
     echo '<tr>';
      echo "<td width='10%'> Дата начала</td>";
      echo '<td width=10%> <input type="date" name="begDate" value="' . $begDate . '"> </td>';
      echo '<td width=10%> Дата окончания</td>';
      echo '<td width=10%> <input type="date" name="endDate" value="' . $endDate . '"> </td>';
      echo '<td width=10%> Номер Истории</td>';
      echo '<td width=10%> <input type="text" name="number" value="' . $number . '"> </td>';
      echo '</tr>';
      echo '</thead>';
      echo '</table>';
?>  
</td></tr>
<tr><td>
<?php 
if(isset($_POST['button2'])) {
$type = strip_tags(trim($_POST['type']));
$begDate = strip_tags(trim($_POST['begDate']));
$endDate = strip_tags(trim($_POST['endDate']));
$number = strip_tags(trim($_POST['number']));
if(empty($begDate)) 
{}  else {
 if(get_magic_quotes_gpc()) {
$type = stripslashes($type);
$begDate = stripslashes($begDate);
$endDate = stripslashes($endDate);
$number = stripslashes($number);
 }

$query = sprintf("UPDATE `Event` SET begDate='$begDate', endDate='$endDate', number='$number' WHERE id=$event_id");
$upd = mysql_query($query);
echo ($upd) ? 'Данные успешно добавлены' : 'Ошибка: '.mysql_error();
echo  "<META HTTP-EQUIV='Refresh' CONTENT='0; URL=event.php?client=$client_id'>";
  }
}
?>

<?
echo '<table border="1" width="100%">';
echo '<tbody>';
while($sel1 = mysql_fetch_array($ActionPropertyType)){
echo '<tr>';
echo "<td width='40%'>";
echo $sel1['name'];
echo '</td>';
echo '<td>';

//$sel =  mysql_fetch_array($ActionProperty);
//$PropertyName=$sel['name'];
//$PropertyTypeId=$sel['type_id'];
$PropertyId=$sel1['id'];
$action = mysql_query("select value from Action where event_id = $event_id and property_type_id = $PropertyId limit 1");
$value = mysql_fetch_assoc($action);
$typeName=$sel1['typeName'];
$typeName1='Constructor';
$typeName2='TEXT';
$typeName3='String';
$typevalue=$sel1['value'];
if ($typeName===$typeName3) {
echo "<select size='1' name='values[]'>";
$rbThesaurus = mysql_query("select * from rbThesaurus");
$ActionProperty = mysql_query("select * from ActionProperty");
while ($sel = mysql_fetch_array($rbThesaurus)) {
$thCode=$sel['code'];
$thID=$sel['id'];
echo $thCode;
if( strcmp($thCode,$typevalue)==0) {
$rbThesaurus = mysql_query("select * from rbThesaurus");
while ($sel2 = mysql_fetch_array($rbThesaurus)) {
$thgid=$sel2['group_id'];
if( strcmp($thID,$thgid)==0) {
if (strcmp($sel2["id"],$value["value"])==0) {
echo '<option value"' . $sel['id'] . '" selected>'; 
echo $sel2['name'];
echo '</option>';
}
else {
echo '<option value"' . $sel['id'] . '">'; 
echo $sel2['name'];
echo '</option>';
}
}
}
}
}
echo '</select>'; 
}


	if (strcmp($typeName,$typeName2)===0) {
      echo "<input type='text' name='values' value='" . $value['value'] . "'>";
	}


if ($typeName===$typeName1) {
echo '<select size="7" multiple="" name="values">';
$rbThesaurus = mysql_query("select * from rbThesaurus");
$ActionProperty = mysql_query("select * from ActionProperty");
while ($sel = mysql_fetch_array($rbThesaurus)) {
$thCode=$sel['code'];
$thID=$sel['id'];
echo $thCode;
if( strcmp($thCode,$typevalue)==0) {
$rbThesaurus = mysql_query("select * from rbThesaurus");
while ($sel2 = mysql_fetch_array($rbThesaurus)) {
$thgid=$sel2['group_id'];
if( strcmp($thID,$thgid)==0) {
if (strcmp($sel2["id"],$value["value"])==0) {
echo '<option value"' . $sel2["id"] . '" selected>'; 
echo $sel2['name'];
echo '</option>';
}
else {
echo '<option value"' . $sel2['id'] . '">'; 
echo $sel2['name'];
echo '</option>';
}
}
}
}
}
echo '</select>';
 
}
	

//while ($sel = mysql_fetch_array($ActionProperty)){
//$PropertyName=$sel['name'];
//$PropertyTypeId=$sel['type_id'];
//if( strcmp($PropertyTypeId,$PropertyId)==0) {
// echo '<option>'; 
//echo $PropertyName;
// echo '</option>';
//} 
  
//}

$values =$_POST["values"];  

//$values = strip_tags(trim($_POST['values']));
//$values = stripslashes($values);
//foreach ($_POST["values"] as $keys=>$values) echo $values ; //это  для отладки, работает 
echo $values;
//if ($_POST["values"]!=''){echo '11';}
//Echo $value["value"];



echo '</td>';

echo '</tr>';
}

	echo '</tbody>';
	echo '</table>'
?>

</td></tr>


<?
      echo '<tr>';
      echo "<td> 
<input type = 'submit' name = 'button1' formaction='event.php?client=$client_id' value = 'Отмена'>
<input type = 'submit' name = 'button2' value = 'ОК'>
</td>";
      echo '</tr>';
?>
</table>
<form>
</td></tr>
</table>