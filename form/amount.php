<title>SAMedicine</title>

<script type="text/javascript">
<!--
/* http://www.alistapart.com/articles/zebratables/ */
function removeClassName (elem, className) {
	elem.className = elem.className.replace(className, "").trim();
}

function addCSSClass (elem, className) {
	removeClassName (elem, className);
	elem.className = (elem.className + " " + className).trim();
}

String.prototype.trim = function() {
	return this.replace( /^\s+|\s+$/, "" );
}

function stripedTable() {
	if (document.getElementById && document.getElementsByTagName) {  
		var allTables = document.getElementsByTagName('table');
		if (!allTables) { return; }

		for (var i = 0; i < allTables.length; i++) {
			if (allTables[i].className.match(/[\w\s ]*scrollTable[\w\s ]*/)) {
				var trs = allTables[i].getElementsByTagName("tr");
				for (var j = 0; j < trs.length; j++) {
					removeClassName(trs[j], 'alternateRow');
					addCSSClass(trs[j], 'normalRow');
				}
				for (var k = 0; k < trs.length; k += 2) {
					removeClassName(trs[k], 'normalRow');
					addCSSClass(trs[k], 'alternateRow');
				}
			}
		}
	}
}

window.onload = function() { stripedTable(); }
-->
</script>
<style type="text/css">
<!--
/* Terence Ordona, portal[AT]imaputz[DOT]com         */
/* http://creativecommons.org/licenses/by-sa/2.0/    */

/* begin some basic styling here                     */
body {
	background: #FFF;
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 10px;
	padding: 0
}

table, td, a {
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif
}

h1 {
	font: normal normal 18px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h2 {
	font: normal normal 16px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h3 {
	font: normal normal 13px Verdana, Geneva, Arial, Helvetica, sans-serif;
	color: #008000;
	margin: 0 0 15px 0
}
/* end basic styling                                 */

/* define height and width of scrollable area. Add 16px to width for scrollbar          */
div.tableContainer {
	clear: both;
	border: 1px solid #963;
	height: 685px;
	overflow: auto;
	width: 100%
}

/* Reset overflow value to hidden for all non-IE browsers. */
html>body div.tableContainer {
	overflow: hidden;
	width: 100%
}

/* define width of table. IE browsers only                 */
div.tableContainer table {
	float: left;
	width: 740px
}

/* define width of table. Add 16px to width for scrollbar.           */
/* All other non-IE browsers.                                        */
html>body div.tableContainer table {
	width: 100%
}

/* set table header to a fixed position. WinIE 6.x only                                       */
/* In WinIE 6.x, any element with a position property set to relative and is a child of       */
/* an element that has an overflow property set, the relative value translates into fixed.    */
/* Ex: parent element DIV with a class of tableContainer has an overflow property set to auto */
thead.fixedHeader tr {
	position: relative
}

/* set THEAD element to have block level attributes. All other non-IE browsers            */
/* this enables overflow to work on TBODY element. All other non-IE, non-Mozilla browsers */
html>body thead.fixedHeader tr {
	display: block
}

/* make the TH elements pretty */
thead.fixedHeader th {
	background: #C96;
	border-left: 1px solid #EB8;
	border-right: 1px solid #B74;
	border-top: 1px solid #EB8;
	font-weight: normal;
	padding: 4px 3px;
	text-align: left
}

/* make the A elements pretty. makes for nice clickable headers                */
thead.fixedHeader a, thead.fixedHeader a:link, thead.fixedHeader a:visited {
	color: #FFF;
	display: block;
	text-decoration: none;
	width: 100%
}

/* make the A elements pretty. makes for nice clickable headers                */
/* WARNING: swapping the background on hover may cause problems in WinIE 6.x   */
thead.fixedHeader a:hover {
	color: #FFF;
	display: block;
	text-decoration: underline;
	width: 100%
}

/* define the table content to be scrollable                                              */
/* set TBODY element to have block level attributes. All other non-IE browsers            */
/* this enables overflow to work on TBODY element. All other non-IE, non-Mozilla browsers */
/* induced side effect is that child TDs no longer accept width: auto                     */
html>body tbody.scrollContent {
	display: block;
	height: 565px;
	overflow: auto;
	width: 100%
}

/* make TD elements pretty. Provide alternating classes for striping the table */
/* http://www.alistapart.com/articles/zebratables/                             */
tbody.scrollContent td, tbody.scrollContent tr.normalRow td {
	background: #FFF;
	border-bottom: none;
	border-left: none;
	border-right: 1px solid #CCC;
	border-top: 1px solid #DDD;
	padding: 2px 3px 3px 4px
}

tbody.scrollContent tr.alternateRow td {
	background: #EEE;
	border-bottom: none;
	border-left: none;
	border-right: 1px solid #CCC;
	border-top: 1px solid #DDD;
	padding: 2px 3px 3px 4px
}

/* define width of TH elements: 1st, 2nd, and 3rd respectively.          */
/* Add 16px to last TH for scrollbar padding. All other non-IE browsers. */
/* http://www.w3.org/TR/REC-CSS2/selector.html#adjacent-selectors        */
html>body thead.fixedHeader th {
	width: 5%
}

html>body thead.fixedHeader th + th {
	width: 9.5%
}

html>body thead.fixedHeader th + th + th {
	width: 40.8%
}

html>body thead.fixedHeader th + th + th + th {
	width: 10%
}

html>body thead.fixedHeader th + th + th + th + th {
	width: 10%
}

html>body thead.fixedHeader th + th + th + th + th + th {
	width: 20.5%
}

/* define width of TD elements: 1st, 2nd, and 3rd respectively.          */
/* All other non-IE browsers.                                            */
/* http://www.w3.org/TR/REC-CSS2/selector.html#adjacent-selectors        */
html>body tbody.scrollContent td {
	width: 5%
}

html>body tbody.scrollContent td + td {
	width: 10%
	
}

html>body tbody.scrollContent td + td + td {
	width: 41%
}

html>body tbody.scrollContent td + td + td + td {
	width: 10%
}

html>body tbody.scrollContent td + td + td + td + td {
	width: 10%
}

html>body tbody.scrollContent td + td + td + td + td + td {
	width: 19%
}
-->
</style>

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
<div id="tableContainer" class="tableContainer">
<table border=1 width='100%' height='100%'>

<thead class="fixedHeader">
<tr><th>
</th><th align='center'>
Код
</th><th align='center'>
Наименование
</th><th align='center'>
Частота применения
</th><th align='center'>
Кратность пименения
</th><th align='center'>
Цена
</th></tr>
</thead>
<tbody class="scrollContent">
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
<?}?>
</tbody>
<tr><td colspan=6>
Поиск:<br/>Введите код: <input type="search" name="code" value=""><button type='sumbit' name='button3'>Искать</button>
</td></tr>
<tr><td colspan=6 align=right>
<button type='sumbit' name='button4'>>></button>
</td></tr>
</table>
</div>
</td><td valign=top>

<table border=1 width='100%' height=100%>
<tr height=5%><th>
</th><th>
Код</th><th>
Наименование</th><th>
Частота</th><th>
Кратностсь</th><th>
Стоимость</th></tr>


<tr><td valign=top width=2%>
<input type='checkbox' name='choice' value=''>
</td><td valign=top>
</td><td valign=top>
</td><td valign=top>
<input type='number' name='frequency'></td><td valign=top>
<input type='number' name='multiplisity'></td><td valign=top>
</td></tr>



<tr><td colspan=5 height=5%>
Итого:</td><td>
</td></tr>
<tr><td colspan=6 align=right height=5%>
<button type='sumbit' name='button5'>Удалить</button>
<button type='sumbit' name='button6'>Расчитать</button>
</td></tr>
</table>
</td></tr>
<tr><td colspan=2>
<table border=1 width=100%>
<tr>
<th colspan=2>Медикаменты</th>
</tr>
<tr>
<th>Наименование</th>
<th>Сумма</th>
</tr>
<tr>
<td></td>
<td></td>
</tr>
<tr>
<td>Итого:</td>
<td></td>
</tr>
<tr>
<td colspan=2><button type='sumbit' name='button7'>Добавить</button></td>
</tr>
</table>
</td></tr>
</table>
</td></tr>
</table>
<form>
</td></tr>
</table>