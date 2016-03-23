<?php
class loginDB
{
   private $db;
   private $ini;
   
     private function saltPassword($password)
   {
	$salt = $this->ini['loginDB']['salt'];
	return substr(sha1($password.$salt),10,-10);
   }
   public function __construct($iniFile)
   {
	$this->ini = parse_ini_file($iniFile,true);
	$host = $this->ini['loginDB']['host'];
	$user = $this->ini['loginDB']['user'];
	$password = $this->ini['loginDB']['password'];
	$database = $this->ini['loginDB']['database'];
	$this->db = new mysqli($host,$user,$password,$database);
	if ($this->db->connect_errno > 0)
	{
		echo __FILE__.":".__LINE__.": failed to connect to db, re: ".$this->db->connect_error.PHP_EOL;
		exit(0);
	}
   }
   public function __destruct()
   {
	$this->db->close();
   }

 
   public function checkIfUserExists($fname)
   {
	$fname = $this->db->real_escape_string($fname);
	$query = "select fname from Manager where fname ='$fname';";
        $results = $this->db->query($query);
	$row = $results->fetch_assoc();
	if ($row['fname'] === $fname)
        {
		return true;
	}
        return false;
   }
  
          public function IndividualRecord($fname)
   {
   
   if ($this->checkIfUserExists($fname) == true)
        {
	//return true;
	}
	
	$fname = $this->db->real_escape_string($fname);
	//$lname = $this->db->real_escape_string($lname);
	//$lname = $this->db->real_escape_string($lname);
	$query = "select * from candidate;";
	$results = $this->db->query($query);
	
	while($list=$results->fetch_assoc())
	{
	
	echo "Applicant's First Name: ".$list['fname'].PHP_EOL;
	echo "Applicant's Last Name:".$list['lname'].PHP_EOL;
	echo "Applicant's Postion Interest:".$list['position'].PHP_EOL;
	echo "Applicant's Gender:".$list['gender'].PHP_EOL;
	echo "Applicant's available hours:".$list['availability'].PHP_EOL;
	}
	if ($this->db->errno > 0)
        {
		echo "DB error: ".$this->db->error.PHP_EOL;
		return;
        }
  }
      

}
?>

