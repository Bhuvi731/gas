<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: text/plain');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
include_once '../database/db.php';

$sql=pg_query($db,"SELECT cylindertype.type,cylinderweight.weight,cylindertype.status,cylindertype.createdby FROM cylinderweight LEFT JOIN cylindertype ON cylindertype.id = cylinderweight.id WHERE cylindertype.status=1");
 if($sql){
        if($sql2=pg_fetch_assoc($sql))
        {
             http_response_code(201);         
             echo json_encode(array("message" => "Successfull"));
        }else{
          http_response_code(503);        
        echo json_encode(array("message" => "Error"));
             }
    }else{
    http_response_code(400);    
    echo json_encode(array("message" => "Error Please Check."));
               }
?>
