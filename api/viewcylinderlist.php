<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: text/plain');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
include_once '../database/db.php';

 echo"SELECT * FROM products LEFT JOIN cylindertype on cylindertype.id = products.cylindertypeid left join cylinderweight on cylinderweight.id =products.cylinderweightid left join vendors on vendors.id = products.vendorid where products.status=1";
$sql=pg_query($db,"SELECT * FROM products LEFT JOIN cylindertype on cylindertype.id = products.cylindertypeid left join cylinderweight on cylinderweight.id =products.cylinderweightid left join vendors on vendors.id = products.vendorid where products.status=1");

if($sql){
      while($sql2=pg_fetch_assoc($sql)){

             http_response_code(201);         
             echo json_encode($sql2);
           }
           }else{
          http_response_code(503);        
        echo json_encode(array("message" => "Error"));
             }
?>
