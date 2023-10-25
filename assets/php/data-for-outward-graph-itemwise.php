<?php
//setting header to json
header('Content-Type: application/json');

//database
define('DB_HOST', '127.0.0.1');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'db_imd_aviation_inventory');

//get connection
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

if(!$mysqli){
  die("Connection failed: " . $mysqli->error);
}

//query to get data from the table
$query = sprintf("SELECT fit.fd_item_id as id,fit.fd_name as name,SUM(fin.fd_quantity) as Qty FROM tb_outwards as fin , tb_items as fit WHERE fin.fd_item_id=fit.fd_item_id AND fin.fd_date BETWEEN CURRENT_DATE-30 AND CURRENT_DATE GROUP BY fin.fd_item_id ORDER BY `Qty` DESC LIMIT 10");

//execute query
$result = $mysqli->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
  $data[] = $row;
}

//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);