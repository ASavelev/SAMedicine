<title>SAMedicine</title>
<?
// Подключаемся к БД 
include "../config/config.php"; 
$client=$_GET['client'];
$event_type = mysql_query("select * from EventType;");
$event_id = mysql_insert_id();

?>
<table width=100% height=100% border=1>
<tr height=3%>
<td colspan=2>
<form method = "post">

<?
   echo '<table border="3" width=25%>';
   echo '<thead>';
   echo '<tr>';
     echo '<td width=25%> Тип Карты</td>';
     echo '<td>' ;
while($sel = mysql_fetch_array($event_type)){
      echo "<input type='radio' name='type' value='" . $sel[id] . "' checked='checked'/>" . $sel[name];



//      echo "<select size='3' multiplae name = 'type[]'>"; 
//      echo "<option value=" . $sel[id] . " checked='checked'/>" . $sel[name] . "</option>";
//      echo "</select>";
}
      echo '</td>';
      echo '</tr>';
      echo '<tr>';
      echo '<td> Дата начала</td>';
      echo '<td> <input type="date" name="begDate"> </td>';
      echo '</tr>';
      echo '<tr>';
      echo '<td> Дата окончания</td>';
      echo '<td> <input type="date" name="endDate"> </td>';
      echo '</tr>';
      echo '<tr>';
      echo '<td> Номер Истории</td>';
      echo '<td> <input type="text" name="number"> </td>';
      echo '</tr>';
      echo '<tr>';
      echo "<td colspan=2> 
<input type = 'submit' name = 'button1' formaction='event.php?client=$client' value = 'Отмена'>
<input type = 'submit' name = 'button2' value = 'ОК'>
</td>";
      echo '</tr>';
      echo '</thead>';
      echo '</table>';
?>  
<?php 
if(isset($_POST['button2'])) {
$type = strip_tags(trim($_POST['type']));
$begDate = strip_tags(trim($_POST['begDate']));
$endDate = strip_tags(trim($_POST['endDate']));
$number = strip_tags(trim($_POST['number']));
if(empty($type) || empty($begDate)) 
echo 'Вы заполнили не все данные';
  else {
 if(get_magic_quotes_gpc()) {
$type = stripslashes($type);
$begDate = stripslashes($begDate);
$endDate = stripslashes($endDate);
$number = stripslashes($number);
 }

$query = sprintf("INSERT INTO `Event` (`client_id`, `type_id`, `begDate`, `endDate`, `number`) VALUES ('$client', '$type', '$begDate', '$endDate', '$number')");
$ins = mysql_query($query);
echo ($ins) ? 'Данные успешно добавлены' : 'Ошибка: '.mysql_error();
echo $event_id = mysql_insert_id();
echo  "<META HTTP-EQUIV='Refresh' CONTENT='0; URL=write_event.php?client=$client&event=$event_id&type=$type'>";
  }
}
?>

<form>
