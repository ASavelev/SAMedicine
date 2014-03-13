<?
// Подключаемся к БД 
include "../config/config.php"; 
?>
<title> Создание карты </title>


<form method='POST'>
<table>
<tr>
<td>Фамилия 
</td>
<td><input type="TEXT" name="lastName">
</td>
</tr>

<tr>
<td>Имя 
</td>
<td><input type="TEXT" name="firstName">
</td>
</tr>

<tr>
<td>Отчество 
</td>
<td><input type="TEXT" name="patrName">
</td>
</tr>

<tr>
<td>Дата рождения 
</td>
<td><input type="date" name="birthDate">
</td>
</tr>
<tr>
<tr>
<td>Пол 
</td>
<td>
<input type="radio" name="sex" value='1'> Мужской 
<input type="radio" name="sex" value='2'> Женский
</td>
</tr>
<tr>
<td>Семейное положение 
</td>
<td>
<?
echo "<input type='radio' name='real_status' value='1'> Холост/Не замужем";
echo "<input type='radio' name='real_status' value='2'> Женат/Замужем ";
?>
</td>
</tr>
<tr>
<td>Национальность 
</td>
<td><input type="TEXT" name="national">
</td>
</tr>
<tr>
<td>Место работы 
</td>
<td><input type="TEXT" name="work">
</td>
</tr>
<tr>
<td><br/><br/><button type="sumbit" formaction="../index.php"  name="button1">Отмена</button>
</td>
<td><br/><br/><button type="sumbit" name="button2">Применить</button>
</td>
</tr>
</table>
<?php 
if(isset($_POST['button2'])) {
$lastName = strip_tags(trim($_POST['lastName']));
$firstName = strip_tags(trim($_POST['firstName']));
$patrName = strip_tags(trim($_POST['patrName']));
$birthDate = strip_tags(trim($_POST['birthDate']));
$sex = strip_tags(trim($_POST['sex']));
$real_status = strip_tags(trim($_POST['real_status']));
$national = strip_tags(trim($_POST['national']));
$work = strip_tags(trim($_POST['work']));
if(empty($lastName) || empty($firstName) || empty($patrName) || empty($birthDate) || empty($sex)) 
echo 'Вы заполнили не все данные';
  else {
 if(get_magic_quotes_gpc()) {
$lastName = stripslashes($lastName);
$firstName = stripslashes($firstName);
$patrName = stripslashes($patrName);
$birthDate = stripslashes($birthDate);
$sex = stripslashes($sex);
$real_status = stripslashes($real_status);
$national = stripslashes($national);
$work = stripslashes($work);
 }
$query = sprintf("INSERT INTO `Client` (`lastName`, `firstName`, `patrName`, `birthDate`, `sex`, `real_status`, `national`, `work`) VALUES ('$lastName', '$firstName', '$patrName', '$birthDate', '$sex', '$real_status', '$national', '$work')");
$ins = mysql_query($query);
echo ($ins) ? 'Данные успешно добавлены' : 'Ошибка: '.mysql_error();
echo  '<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../index.php">';
  }
}
?>
</form>
