
<?
// ������������ � �� 
include "../config/config.php"; 
$client_id=$_GET['client'];
$client = mysql_query("select * from Client where id=$client_id;");
   while($sel = mysql_fetch_array($client)){
$lastName = $sel['lastName'];
$firstName = $sel['firstName'];
$patrName = $sel['patrName'];
$birthDate = $sel['birthDate'];
$sex = $sel['sex'];
$real_status = $sel['real_status'];
$national = $sel['national'];
$work = $sel['work'];
}
?>
<title> �������� ����� </title>


<form method='POST'>
<table>
<tr>
<td>������� 
</td>
<td><input type="TEXT" name="lastName" value="<?echo $lastName;?>">
</td>
</tr>

<tr>
<td>��� 
</td>
<td><input type="TEXT" name="firstName" value="<?echo $firstName;?>">
</td>
</tr>

<tr>
<td>�������� 
</td>
<td><input type="TEXT" name="patrName" value="<?echo $patrName;?>">
</td>
</tr>

<tr>
<td>���� �������� 
</td>
<td><input type="date" name="birthDate" value="<?echo $birthDate;?>">
</td>
</tr>
<tr>
<tr>
<td>��� 
</td>
<td>
<? if ($sex === '1'){?>
<input type="radio" name="sex"  value="1" checked="checked"> ������� 
<input type="radio" name="sex"  value="2"> �������
<?}?>
<? if ($sex === '2'){?>
<input type="radio" name="sex"  value="1"> ������� 
<input type="radio" name="sex"  value="2" checked="checked"> �������
<?}?>
</td>
</tr>
<tr>
<td>�������� ��������� 
</td>
<td>
<?
if ($real_status === '1'){
echo "<input type='radio' name='real_status' value='1' checked='checked'> ������/�� �������";
echo "<input type='radio' name='real_status' value='2'> �����/������� ";
}
if ($real_status === '2'){
echo "<input type='radio' name='real_status' value='1'> ������/�� �������";
echo "<input type='radio' name='real_status' value='2' checked='checked'> �����/������� ";
}
if ($real_status === '0'){
echo "<input type='radio' name='real_status' value='1'> ������/�� �������";
echo "<input type='radio' name='real_status' value='2'> �����/������� ";
}
?>
</td>
</tr>
<tr>
<td>�������������� 
</td>
<td><input type="TEXT" name="national" value="<?echo $national;?>">
</td>
</tr>
<tr>
<td>����� ������ 
</td>
<td><input type='TEXT' name='work' value='<?echo $work;?>'>
</td>
</tr>
<tr>
<td><br/><br/><button type="sumbit" formaction="../index.php"  name="button1">������</button>
</td>
<td><br/><br/><button type="sumbit" name="button2">���������</button>
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
echo '�� ��������� �� ��� ������';
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
$query = sprintf("UPDATE `Client` SET lastName='$lastName', firstName='$firstName', patrName='$patrName', birthDate='$birthDate', sex='$sex', real_status='$real_status', national='$national', work='$work' WHERE id=$client_id");
$ins = mysql_query($query);
echo ($ins) ? '������ ������� ���������' : '������: '.mysql_error();
echo  '<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../index.php">';
  }
}
?>
</form>
