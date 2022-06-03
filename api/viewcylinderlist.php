<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: text/plain');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
include_once '../database/db.php';
<<<<<<< Updated upstream

$sql=pg_query($db,"SELECT products.id,products.cylindertypeid,products.cylinderweightid,products.location,products.price,products.status,products.vendorid,products.createdby,products.createdat,products.updatedby,products.updatedat,cylindertype.type,cylinderweight.weight,vendors.businessname FROM products LEFT JOIN  cylindertype on cylindertype.id = products.cylindertypeid left join cylinderweight on cylinderweight.id =products.cylinderweightid left join vendors on vendors.id = products.vendorid where products.status=1");
$my=array();
 if($sql){
   //var_dump($sql); 
    while($sql2=pg_fetch_assoc($sql)){
 
             http_response_code(201);
                 $my[]=$sql2;
                 
             }      
                echo json_encode($my);
           }else{
          http_response_code(503);        
        echo json_encode(array("message" => "Error"));
             }
?>
=======
 if(isset($_REQUEST['searchbydate']))
      {
        
       $where= "WHERE sb.c_flag ='0'";
       if(isset($_REQUEST['cname']) && empty($_REQUEST['date2']))
        {
            $cname = $_REQUEST['ids'];
            
            $where = "WHERE cus_id = '$cname' ";
        } else if(isset($_REQUEST['date2']) && empty($_REQUEST['cname']))
        {
            $date2 = date("Y-m-d", strtotime($_REQUEST['date2']));
            
            $where = "WHERE sdate = '$date2' ";
        } else if(isset($_REQUEST['cname']) && isset($_REQUEST['date2']))
      {
            $cname = $_REQUEST['ids'];
            $date2 = date("Y-m-d", strtotime($_REQUEST['date2']));
      
       $where = "WHERE sdate = '$date2' and cus_id = '$cname'";
      } 
      echo "select * from order_entry $where AND c_flag = '0' ORDER BY sdate DESC LIMIT $start, $limit";
        $selemp=mysqli_query($con,"select * from order_entry $where AND c_flag = '0' ORDER BY sdate DESC LIMIT $start, $limit"); 
      } 
      else if(isset($_REQUEST['clear'])) {
        unset($_REQUEST['searchbydate']);
        $selemp=mysqli_query($con,"select * from order_entry WHERE c_flag = '0' ORDER BY sdate DESC LIMIT $start, $limit"); 
     
      }else{


    $sql=pg_query($db,"SELECT cylindertype.type,cylinderweight.weight,cylindertype.status,cylindertype.createdby FROM cylinderweight LEFT JOIN cylindertype ON cylindertype.id = cylinderweight.id WHERE cylindertype.status=1");
   
        if($sql2=pg_fetch_assoc($sql))
        {
             http_response_code(201);         
             echo json_encode(array("message" => "Successfull"));
        }
    }else{
    http_response_code(400);    
    echo json_encode(array("message" => "Error Please Check."));
               }
?>
>>>>>>> Stashed changes
