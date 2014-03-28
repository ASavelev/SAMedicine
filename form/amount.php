<title>SAMedicine</title>
<table width='100%' height='100%'>
<tr><td>
<?
// Подключаемся к БД 
include "../config/config.php"; 
$client_id=$_GET['client'];
$event_id=$_GET['event'];
$type_id=$_GET['type'];
$rbPrice = mysql_query("select * from rbPrice;");	

?>
<form method = "post">
<table width='100%' height='100%'>
<tr><td>
<?php

echo "<button type='sumbit' name='button1' formaction='write_event.php?client=$client_id&event=$event_id&type=$type_id'>Мед.Карта</button>
<button type='sumbit' name='button2' formaction='amount.php?client=$client_id&event=$event_id&type=$type_id'>Оплата</button>"
?>
</td></tr>
<tr><td>
</td></tr>
<tr><td>
<table border=1 width='100%' height='100%'>
<tr><td width='50%' height='100%'>
<table border=1 width='100%' height='100%'>
<tr><td colspan=6>
Поиск:<br/>Введите код: <input type="search" name="code" value=""><button type='sumbit' name='button3'>Искать</button>
</td></tr>
<tr><td>
</td><td align='center'>
Код
</td><td align='center'>
Наименование
</td><td align='center'>
Частота применения
</td><td align='center'>
Кратность пименения
</td><td align='center'>
Цена
</td></tr>
<?while ($sel = mysql_fetch_array($rbPrice)) {
$price_id=$sel['id']; 
$price_code=$sel['code'];
$price_name=$sel['name'];
$price_frequency=$sel["frequency"];
$price_multiplisity=$sel["multiplisity"];
$price_summ=$sel["summ"];
?>
<tr><td align='center'>
<input type='checkbox' name='choice' value='<?echo $price_id;?>'>
</td><td align='center'>
<?echo $price_code;?>
</td><td>
<?echo $price_name;?>
</td><td align='center'>
<?echo $price_frequency;?>
</td><td align='center'>
<?echo $price_multiplisity;?>
</td><td align='center'>
<?echo $price_summ, ' Р.';?>
</td></tr>
<?}?></table>
</td><td>
<table border=1 width='100%' height='100%'>
<tr><td>
Наименование</td><td>
Частота</td><td>
Кратностсь</td><td>
Стоимость</td></tr>
<tr><td>
</td><td>
<input type='number' name='frequency'></td><td>
<input type='number' name='multiplisity'></td><td>
</td></tr>
<tr><td colspan=3>
Итого:</td><td>
</td></tr>
</table>
</td></tr>
</table>
</td></tr>
</table>
<form>
</td></tr>
</table>