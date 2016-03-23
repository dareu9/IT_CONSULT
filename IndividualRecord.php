#!/usr/bin/php
<?php

require_once("logindb.php.inc");
//require_once("AddNotes.php.inc");

Echo "Enter manager's first name ".PHP_EOL;
$handle=fopen("php://stdin","r");
$line1=fgets($handle);
$fname=trim($line1);

Echo "Enter manager's last name ".PHP_EOL;
//$handle=fopen("php://stdin","r");
$line2=fgets($handle);
$lname=trim($line2);



$login = new loginDB("logindb.ini");
$login->IndividualRecord($fname);
   
  

?>