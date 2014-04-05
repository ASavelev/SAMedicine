
<tr><td valign=top width=2%>
<input type='checkbox' name='choice' value=''>
</td><td valign=top>
</td><td valign=top>
</td><td valign=top>
<input type='number' name='frequency'></td><td valign=top>
<input type='number' name='multiplisity'></td><td valign=top>
</td></tr>










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
	height: 285px;
	overflow: auto;
	width: 50%
}

/* Reset overflow value to hidden for all non-IE browsers. */
html>body div.tableContainer {
	overflow: hidden;
	width: 50%
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
	height: 262px;
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
	width: 200px
}

html>body thead.fixedHeader th + th {
	width: 240px
}

html>body thead.fixedHeader th + th + th {
	width: 316px
}
html>body thead.fixedHeader th + th + th + th {
	width: 316px
}
html>body thead.fixedHeader th + th + th + th + th {
	width: 316px
}
html>body thead.fixedHeader th + th + th + th + th + th {
	width: 316px
}

/* define width of TD elements: 1st, 2nd, and 3rd respectively.          */
/* All other non-IE browsers.                                            */
/* http://www.w3.org/TR/REC-CSS2/selector.html#adjacent-selectors        */
html>body tbody.scrollContent td {
	width: 200px
}

html>body tbody.scrollContent td + td {
	width: 240px
}

html>body tbody.scrollContent td + td + td {
	width: 300px
}
-->
</style>

<div id="tableContainer" class="tableContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">
<thead class="fixedHeader">
	<tr>
		<th><a href="#">Header 1</a></th>
		<th><a href="#">Header 2</a></th>
		<th><a href="#">Header 3</a></th>
	</tr>
</thead>
<tbody class="scrollContent">
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>And Repeat 1</td>
		<td>And Repeat 2</td>
		<td>And Repeat 3</td>
	</tr>
	<tr>
		<td>Cell Content 1</td>
		<td>Cell Content 2</td>
		<td>Cell Content 3</td>
	</tr>
	<tr>
		<td>More Cell Content 1</td>
		<td>More Cell Content 2</td>
		<td>More Cell Content 3</td>
	</tr>
	<tr>
		<td>Even More Cell Content 1</td>
		<td>Even More Cell Content 2</td>
		<td>Even More Cell Content 3</td>
	</tr>
	<tr>
		<td>End of Cell Content 1</td>
		<td>End of Cell Content 2</td>
		<td>End of Cell Content 3</td>
	</tr>
</tbody>
</table>
</div>

