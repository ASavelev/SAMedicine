<div id="basic-modal-content">
<table>
<tr><td><img src="img/seobook.jpg" width="150px" height="192px" align="left" /></td><td> 
����������� �� �������� � �������� ��������� ����� "<font color="red">SEO ��������� ����������� �� � �� �</font>".
</td></tr>
</table>
<center>
<form id="scf-form" action="write.php" method="POST">
<p><input type="text" name="scf-name" class="txt" id="scf-name" placeholder="���� ���" /></p>
<p><input type="email" name="scf-email" class="txt" id="scf-email" placeholder="��� E-mail" /></p>
<p><input id="submit" type="submit" value="�����������" name="submit" /></p>
<div id="success"></div>
</form>
</center>
</div>



create table Client (id int(11) not null primary key AUTO_INCREMENT, lastName varchar(30) not null comment '�������', firstName varchar(30) not null comment '���', patrName varchar(30) not null comment '��������', birthDate date not null comment '���� ��������', sex tinyint(4) not null comment '��� (0-������������, 1-�, 2-�)' ) ENGINE=InnoDB AUTO_INCREMENT=31418 DEFAULT CHARSET=utf8 COMMENT='������� ������ ��������';

Alter table EventType add column name varchar(30) not null comment '��������';

create table Event (id int(11) not null primary key AUTO_INCREMENT, client_id int(11) not null comment '������������� ��������', type_id int(11) not null comment '������������� ���� �������', begDate date not null comment '���� ������ �������', endDate date not null comment '���� ��������� �������') ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='����������� �����';

create table ActionPropertyType (id int(11) not null primary key AUTO_INCREMENT, name varchar(150) comment '������������') ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��� �������� ��������';
create table ActionProperty (id int(11) not null primary key AUTO_INCREMENT, type_id int(11), name varchar(150) comment '������������', FOREIGN KEY (type_id) REFERENCES ActionPropertyType(id) ON UPDATE RESTRICT ON DELETE CASCADE) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='�������� �������� ��������';
create table Action (id int(11) not null primary key AUTO_INCREMENT, event_id int(11) not null, property_type_id int(11) not null, property_id int(11) not null, FOREIGN KEY (property_type_id) REFERENCES ActionPropertyType(id) ON UPDATE RESTRICT ON DELETE CASCADE, FOREIGN KEY (property_id) REFERENCES ActionProperty(id) ON UPDATE RESTRICT ON DELETE CASCADE, FOREIGN KEY (event_id) REFERENCES Event(id) ON UPDATE RESTRICT ON DELETE CASCADE) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��������';





<input type="radio" name="nameRadio" value="1" checked="checked"/>
<input type="radio" name="nameRadio" value="20"/>
<input type="radio" name="nameRadio" value="300"/>
<input type="radio" name="nameRadio" value="400"/>
<output id="rezultatRadio">1</output>

<script>
window.onclick = function onclickRadio() {
  var nameRadio = document.getElementsByName('nameRadio');
  for (var i = 0; i < nameRadio.length; i++) {
    if (nameRadio[i].type === 'radio' && nameRadio[i].checked) {
        rezultatRadio = nameRadio[i].value;       
    }
  }
  document.getElementById('rezultatRadio').innerHTML = rezultatRadio;
}
</script>

������� ������������ � ������� ���������  ������ ��������� �� ������������  ��������������� �������� (��� ������� �  �������������� �������� � �� ��������� ���������� ��������)
