<title>SAMedicine</title>
<?
// ������������ � �� 
include "../config/config.php"; 
$client=$_GET['client'];
$event = mysql_query("select * from Event where client_id=$client");
$event_type = mysql_query("select * from EventType;");
while($sel1 = mysql_fetch_array($event_type)){
$type=$sel1['id'];
}
?>

<table width=100% height=100% border=1>
<tr height=3%>
<td colspan=2>
<form method = "post">
<input type = "submit" name = "button1" formaction="../index.php" value = "���������">
<form>
</td>
</tr>
<tr>
<td  valign="top">
<?
	
// ������� �� �������� ����� ��������� HTML-�������
    echo '<table border="1" width=100%>';
   echo '<thead>';
   echo '<tr>';
   echo '<th>���</th>';
   echo '<th>���� ������</th>';
   echo '<th>���� ���������</th>';
   echo '<th>����� �������</th>';
   echo '<th width=5%></th>';
   echo '</tr>';
   echo '</thead>';
   echo '<tbody>';
// ������� � HTML-������� ��� ������ �������� �� ������� MySQL 
   while($sel = mysql_fetch_array($event)){
$event_id=$sel['id'];
$date=$sel[bedDate];
      echo '<tr>';
      echo '<td>';
// . $type_name . '</td>';
$type_id=$sel['type_id'];
if($type == $type_id){echo $sel1[name];}
echo ' </td>';
      echo '<td>' .  date("d.m.Y", strtotime($sel['begDate'])) . '</td>';
      echo '<td>';
if ($sel['endDate'] <> '0000-00-00') 
echo date("d.m.Y", strtotime($sel['endDate']));
echo '</td>';
      echo '<td>' . $sel['number'] . '</td>';
        echo "<td align=center><form method = 'post'><input type = 'submit' name = 'button2'  formaction='write_event.php?client=$client&event=$event_id&type=$sel[type_id]' value = '�������������'><form></td>";      echo '</tr>';
   }
    echo '</tbody>';
   echo '</table>';

?>	
</td>
<td width=20% valign="top">
<table>
<tr><td colspan=2>������<br/><br/></td></tr>
<form method='POST'>
<tr>
<td>����� ������� �������
</td>
<td><input type="text" name="number">
</td>
</tr>

<tr>
<td>
</td>
<td>
</td>
</tr>

<tr>
<td>���� ������
</td>
<td><input type="date" name="begDate">
</td>
</tr>

<tr>
<td>���� ���������
</td>
<td><input type="date" name="endDate">
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
echo mysql_num_rows($event); 
?>
</td>
</tr>
<tr height=3%>
<td colspan=2>
<form method = "post">
<?
echo "<input type = 'submit' name = 'button5' formaction='create_event.php?client=$client' value = '������� �����'>";
?>
<form>
</td>
</tr>
</table>
x	