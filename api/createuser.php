<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: text/plain');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
include_once '../database/db.php';

$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$phone=$_POST['phone'];
$email=$_POST['email'];
$password=$_POST['password'];
$gender=$_POST['gender'];
$dateofbirth=$_POST['dateofbirth'];
$status="1";
$createdby="1";                                                                                                                                                                                           
<<<<<<< Updated upstream
if(!empty($email) &&
!empty($password) &&
!empty($status)){  
=======
if(!empty($firstname) && !empty($phone) && !empty($email) &&
!empty($gender) && !empty($dateofbirth) &&
!empty($status)){ 
>>>>>>> Stashed changes
    $sql = "SELECT * FROM users WHERE email='$email'";
    $res = pg_query($db, $sql);
    if(pg_num_rows($res) > 0){
        http_response_code(201);         
        echo json_encode(array("message" => "email_existed"));
      } 
    else{
<<<<<<< Updated upstream
       
    $query=pg_query($db,"INSERT INTO users(firstname,lastname,phone,email,gender,dateofbirth,status,createdby,password)VALUES('$firstname','$lastname','$phone','$email','$gender','$dateofbirth','$status','$createdby','$password')RETURNING id");
=======
        
    $sql = "INSERT INTO users(firstname,lastname,phone,email,gender,dateofbirth,status,createdby,password)VALUES('$firstname','$lastname','$phone','$email','$gender','$dateofbirth','$status','$createdby','$password')RETURNING id";
    
    $query=pg_query($db,$sql);
>>>>>>> Stashed changes
    if($query)
    {
       $insert_row = pg_fetch_row($query);
        $insert_id = $insert_row[0];
        $sql=pg_query($db,"INSERT INTO userlogins(userid)VALUES('$insert_id')");
        http_response_code(201);         
        echo json_encode(array("message" => "Successfull"));
    }else
    {
        http_response_code(503);        
        echo json_encode(array("message" => "Error"));
    }
}
}
else
{
    http_response_code(400);    
    echo json_encode(array("message" => "Error Please Check."));
}
?>