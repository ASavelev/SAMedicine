<?php 

$host = "localhost";   // имя или ip-адрес сервера MySQL 
$user = "sam";   // имя пользователя, под которым вы можете работать с базой данных 
$pass = "mas";    // пароль для доступа к БД 
$db   = "sam_base";     // имя базы данных к которой подключаемся 

/// Соединяемся с сервером MySQL 
$connect = @mysql_connect($host, $user, $pass); 

// Проверяем создано ли соединение с сервером MySQL 
if(!$connect) 
{ 
    exit(); 
} 
// Проверяем правильно выбрана ли база данных, существует ли она. 
if(!@mysql_select_db($db, $connect)) 
{ 
    exit();     
} 

// установка кодировки  
mysql_query("SET character_set_client='cp1251'"); 
mysql_query("SET character_set_results='cp1251'"); 
mysql_query("SET collation_connection='cp1251_general_ci'");

?>