<title>SAMedicine</title>
<?
// ������������ � �� 
include "config/config.php"; 
// ������ ������� ���� ������ �� ������� test  
$r = mysql_query("SELECT * FROM Client"); 
$query = 'select lastName,
  firstName,
  patrName,
  birthDate ,
  sex
  From Client
';
$result = mysql_query($query) or die('������ �� ������: ' . mysql_error());
$no_filter = '������� ������';
$sex_m = �;
$sex_g = �;
?>
<script language=JavaScript>
function ft1() {
var ft1 = window.open("form/addClient.php", "kv1", "resizable,width=220,hight=190");
}
</script>
<?
if(isset($_POST['button4'])) {
$lastName = strip_tags(trim($_POST['lastName']));
$firstName = strip_tags(trim($_POST['firstName']));
$patrName = strip_tags(trim($_POST['patrName']));
$birthDate = strip_tags(trim($_POST['birthDate']));
if(empty($lastName) || empty($firstName) || empty($patrName) || empty($birthDate)) 
$filter = $no_filter;
  else {
 if(get_magic_quotes_gpc()) {
$lastName = stripslashes($lastName);
$firstName = stripslashes($firstName);
$patrName = stripslashes($patrName);
$birthDate = stripslashes($birthDate);
 }
// echo ($sel_s) ? '������ ������� ���������' : '������: '.mysql_error();
// echo  '<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../index.php">';
// $select = $select_s;
  }
}
// $select_s = mysql_query("select $lastName, $firstName, $patrName, $birthDate, sex from Client");
$select_s = mysql_query("select * from Client where lastName='$lastName' and firstName='$firstName' and patrName='$patrName' and birthDate='$birthDate' order by lastName;");
$select_f = mysql_query("select * from Client order by lastName;");
?>
<?


$lastName = strip_tags(trim($_POST['lastName']));
$firstName = strip_tags(trim($_POST['firstName']));
$patrName = strip_tags(trim($_POST['patrName']));
$birthDate = strip_tags(trim($_POST['birthDate']));
if(empty($lastName) || empty($firstName) || empty($patrName) || empty($birthDate)) 
$select = $select_f;
  else {
$select = $select_s;
  }
?>




<table width=100% height=100% border=1>
<tr height=3%>
<td colspan=2>
<SCRIPT LANGUAGE="JavaScript"></SCRIPT>

<form method = "post">
<input type = "submit" name = "button1" formaction="index.php" value = "���������">
<form>
<?
if($_POST['button2']){echo  "<META HTTP-EQUIV='Refresh' CONTENT='0; URL=../index.php?page=$sel[id]'>";}
else {}
?>
</td>
</tr>
<tr>
<td  valign="top">
<?
	
// ������� �� �������� ����� ��������� HTML-�������
    echo '<table border="1" width=100%>';
   echo '<thead>';
   echo '<tr>';
   echo '<th width=3%>���</th>';
   echo '<th>�������</th>';
   echo '<th>���</th>';
   echo '<th>��������</th>';
   echo '<th>���� ��������</th>';
   echo '<th>���</th>';
   echo '<th>��������������</th>';
   echo '<th>����� ������</th>';
   echo '<th>�������� ���������</th>';
   echo '<th width=5% colspan=3></th>';

   echo '</tr>';
   echo '</thead>';
   echo '<tbody>';
// ������� � HTML-������� ��� ������ �������� �� ������� MySQL 
   while($sel = mysql_fetch_array($select)){ 
      echo '<tr>';
      echo '<td align=center>' . $sel['id'] . '</td>';
      echo '<td>' . $sel['lastName'] . '</td>';
      echo '<td>' . $sel['firstName'] . '</td>';
      echo '<td>' . $sel['patrName'] . '</td>';
      echo '<td align=center>' . date("d.m.Y", strtotime($sel['birthDate'])) . '</td>';
      echo '<td align=center>';
if($sel['sex'] == 1){echo '������� </td>';}
if($sel['sex'] == 2){echo '������� </td>';}
// . $sel['sex']  . '</td>';
      echo '<td align=center	>' . $sel['national'] . '</td>';
      echo '<td align=center>' . $sel['work'] . '</td>';
      echo '<td align=center>';
if($sel['real_status'] == 1 && $sel['sex'] == 1){echo ' ������';}
if($sel['real_status'] == 1 && $sel['sex'] == 2){echo ' �����';}
if($sel['real_status'] == 2 && $sel['sex'] == 1){echo ' �� �������';}
if($sel['real_status'] == 2 && $sel['sex'] == 2){echo ' �������';}
echo '</td>';
// . $sel['real_status']  . '</td>';
      echo "<td align=center><form method = 'post'><input type = 'submit' name = 'button2'  formaction='form/event.php?client=$sel[id]' value = '��� �����'><form></td>";
      echo "<td align=center><form method = 'post'><input type = 'submit' name = 'button6'  formaction='form/writeClient.php?client=$sel[id]' value = '�������������'><form></td>";
      echo "<td align=center><form method = 'post'><input type = 'submit' name = 'button7' value = '�������'><form></td>";
      echo '</tr>';
   }
    echo '</tbody>';
   echo '</table>';



echo $sel_f;
if(isset($_POST['button4'])) { echo $sel_s ; }

?>	
</td>
<td width=20% valign="top">
<table>
<tr><td colspan=2>������<br/><br/></td></tr>
<form method='POST'>
<tr>
<td>������� 
</td>
<td><input type="TEXT" name="lastName">
</td>
</tr>

<tr>
<td>��� 
</td>
<td><input type="TEXT" name="firstName">
</td>
</tr>

<tr>
<td>�������� 
</td>
<td><input type="TEXT" name="patrName">
</td>
</tr>

<tr>
<td>���� �������� 
</td>
<td><input type="date" name="birthDate">
</td>
</tr>
<tr>
<td><br/><br/><button type="reset" name="button3">��������</button>
</td>
<td><br/><br/><button type="sumbit" name="button4">���������</button>
</td>
</tr>
<tr>
<td>
<? echo $filter; ?>
</td></tr>
</form>
</table>



</td>
</tr>
<tr height=3%>
<td colspan=2>
<?
// ������� ���������� �������� ������� test 
echo "����������� ������� &nbsp";
echo mysql_num_rows($r); 
?>
</td>
</tr>
<tr height=3%>
<td colspan=2>
<form method = "post">
<input type = "submit" name = "button5" formaction="form/addClient.php" value = "����������� ��������">
<form>
</td>
</tr>
</table>
