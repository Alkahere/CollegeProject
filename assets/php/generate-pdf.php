<?php
require_once ("connect-database.php");
require_once ('../plugins/dompdf/autoload.inc.php');
$station_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT s.fd_name, s.fd_address FROM tb_stations as s, tb_outwards as o WHERE s.fd_station_id = o.fd_station_id AND o.fd_outward_id = ".$_POST['ch_outward_id'][0].";"));
$dispatch_id = implode ("/", $_POST['ch_outward_id']);
$file_name = implode ("-", $_POST['ch_outward_id']);

$items = "";
for ($i = 0; $i < count ($_POST['ch_outward_id']); $i++) {
	$query = "SELECT fd_item_id, fd_quantity, fd_remarks FROM tb_outwards WHERE fd_outward_id = ".$_POST['ch_outward_id'][$i].";";
	$result_set = mysqli_query ($conn, $query);
	$result_row = mysqli_fetch_array ($result_set);
	
	$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$result_row['fd_item_id'].";"));
	$lc_item_name = $item_result_row[0];
	$items .= '<tr><td>'.($i + 1).'</td><td>'.$lc_item_name.'</td><td style="text-align:center">'.$result_row['fd_quantity'].'</td><td>'.$result_row['fd_remarks'].'</td></tr>';
}

$html = '<h3><strong><u>Office of the C R S (Surface Instruments Division), Meteorological Office, Pune 411 005</u></strong></h3>
<p>(Acknowledge the receipt and return the defective instruments to the office immediately)</p>

<table style="width:700px;">
	<tbody>
		<tr><td colspan="2">Your Ref No: '.$_POST['tx_y_ref'].'</td><td>Dated: '.$_POST['tx_y_date'].'</td></tr>
		<tr><td colspan="3">&nbsp;</td></tr>
		<tr><td>Our Ref No: CRS/SI/EL/'.$_POST['tx_o_ref'].'</td><td>Station: '.$station_result_array['fd_name'].'</td><td>Dated: '.$_POST['tx_o_date'].'</td></tr>
	</tbody>
</table>
<p>The article shown overleaf are sent by: '.$_POST['tx_s'].'</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table style="width:700px; text-align: center;">
	<tbody>
		<tr>
			<td>'.$_POST['tx_o'].'</td>
			<td>'.$_POST['tx_p'].'</td>
			<td>'.$_POST['tx_c'].'</td>
			<td>'.$_POST['tx_pa'].'</td>
		</tr>
		<tr>
			<td>Ordered By</td>
			<td>Passed By</td>
			<td>Checked By</td>
			<td>Packed By</td>
		</tr>
	</tbody>
</table>
<br/>
<table style="width:700px;">
	<tbody>
		<tr><td>Dealt By: '.$_POST['tx_d'].'</td><td>Dispatch ID: '.$dispatch_id.'</td></tr>
	</tbody>
</table>
<p>Received the articles in the condition mentioned in remarks column.</p>
<p>&nbsp;</p>
<table style="width:700px;">
	<tbody>
		<tr><td>Date: '.$_POST['tx_s_date'].'</td><td>Name &amp; Signature: '.$_POST['tx_s_name'].'</td><td>Designation: '.$_POST['tx_s_desig'].'</td></tr>
	</tbody>
</table>
<br/>
<table border="1" style="width:700px; text-align: left;">
	<thead>
		<tr>
			<th scope="col">Sr. No.</th>
			<th scope="col">Articles / Items</th>
			<th scope="col">Quantity</th>
			<th scope="col">Remarks</th>
		</tr>'.$items.'
	</thead>
	<tbody>
	</tbody>
</table>
<div style="page-break-before: always;"></div>
<p>Address: '.$station_result_array['fd_address'].'</p>';

// reference the Dompdf namespace
use Dompdf\Dompdf;

// instantiate and use the dompdf class
$dompdf = new Dompdf();

$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'portrait');

// Render the HTML as PDF
$dompdf->render();

$output = $dompdf->output();
file_put_contents("../../uploads/".time()."-".$file_name.".pdf", $output);

$result = mysqli_query ($conn, "INSERT INTO tb_dispatch_reports VALUES (NULL, '".$html."', '".$dispatch_id."', '".time()."-".$file_name."');");
for ($i = 0; $i < count ($_POST['ch_outward_id']); $i++) {
  mysqli_query ($conn, "UPDATE tb_outwards SET fd_is_dispatched = 1 WHERE fd_outward_id = ".$_POST['ch_outward_id'][$i].";");
}
if ($result) {
	echo (json_encode (array ('success' => "PDF Generated Successfully")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>