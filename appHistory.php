#!/usr/bin/php
<?php

require_once("appHistory.php.inc");
//require_once("AddNotes.php.inc");

Echo "Enter your first name".PHP_EOL;
$handle=fopen("php://stdin","r");
$line1=fgets($handle);
$fname=trim($line1);

Echo "Enter your last name".PHP_EOL;
$handle=fopen("php://stdin","r");
$line1=fgets($handle);
$lname=trim($line1);

$login = new loginDB("logindb.ini");
$login->appHistory($fname);
   
  

?>