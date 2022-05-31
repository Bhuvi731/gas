<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: text/plain');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
include_once '../database/db.php';

// $sql=pg_query($db,"SELECT * FROM cylinderweight LEFT JOIN cylindertype ON cylindertype.id = cylinderweight.id WHERE cylindertype.status=1");

//$location=$_POST("location");
// $businesstype=$_POST['businesstype'];
// if(!empty($businesstype)){
// if($businesstype==2){
//   $where="where businesstype=2";
// }
// else($businesstype==2){

//   $where="where businesstype=2";

//   }

$sql=pg_query($db,"SELECT * FROM products LEFT JOIN  cylindertype on cylindertype.id = products.cylindertypeid left join cylinderweight on cylinderweight.id =products.cylinderweightid left join vendors on vendors.id = products.vendorid where products.status=1");

 if($sql){
   //var_dump($sql); 
    while($sql2=pg_fetch_array($sql)){

             http_response_code(201);       
             echo json_encode(array($sql2));
           }
           }else{
          http_response_code(503);        
        echo json_encode(array("message" => "Error"));
             }
?>
