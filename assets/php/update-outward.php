<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_SESSION['session_user_type']) && isset ($_POST['tx_date']) && isset ($_POST['station_id']) && isset ($_POST['item_id']) && isset ($_POST['tx_quantity']) && isset ($_POST['inward_serial_number_id']) && isset ($_POST['tx_mode_of_dispatch']) && isset ($_POST['tx_remarks']) && isset ($_POST['outward_id'])) {
	if ($_SESSION['session_user_type'] === "Administrator" || $_SESSION['session_user_type'] === "Outward") {
		$lc_outward_id = mysqli_real_escape_string ($conn, trim ($_POST['outward_id']));
		$lc_date = date ("Y-m-d", strtotime ($_POST['tx_date']));
		$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
		$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
		$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity']));
		$lc_mode_of_dispatch = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_dispatch']));
		$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));

		$lc_item_type_id = (isset ($_POST['item_type_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'])) : 0;
		$lc_item_manufacturer_id = (isset ($_POST['item_manufacturer_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id'])) : 0;

		$result = mysqli_query ($conn, "UPDATE tb_outwards SET fd_date = '".$lc_date."', fd_station_id = '".$lc_station_id."', fd_item_id = ".$lc_item_id.", fd_item_type_id = ".$lc_item_type_id.", fd_item_manufacturer_id = ".$lc_item_manufacturer_id.", fd_quantity = ".$lc_quantity.", fd_mode_of_dispatch = '".$lc_mode_of_dispatch."', fd_remarks = '".$lc_remarks."' WHERE fd_outward_id = ".$lc_outward_id.";");

		if ($result) {
			$serial_numbers = array ();

			$count_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT count(fd_outward_serial_number_id) FROM tb_outward_serial_numbers WHERE fd_outward_id = ".$lc_outward_id.";"));
			$db_count = $count_result_row[0];
			$post_count = count ($_POST['inward_serial_number_id']);

			$result_set = mysqli_query ($conn, "SELECT fd_outward_serial_number_id FROM tb_outward_serial_numbers WHERE fd_outward_id = ".$lc_outward_id.";");

			for ($i = 0; $i < $post_count AND $i < $db_count; $i++) {
				$result_row = mysqli_fetch_row ($result_set);
				$lc_inward_serial_number_id = mysqli_real_escape_string ($conn, trim ($_POST['inward_serial_number_id'][$i]));
				mysqli_query ($conn, "UPDATE tb_outward_serial_numbers SET fd_inward_serial_number_id = ".$lc_inward_serial_number_id." WHERE fd_outward_serial_number_id = ".$result_row[0].";");
				$serial_numbers_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_serial_number FROM tb_inward_serial_numbers WHERE fd_inward_serial_number_id = ".$lc_inward_serial_number_id.";"));
				$serial_numbers [] = $serial_numbers_result_array['fd_serial_number'];
			}

			$multi_query = "INSERT INTO tb_outward_serial_numbers (fd_outward_serial_number_id, fd_outward_id, fd_inward_serial_number_id) VALUES";
			for ($i = $db_count; $i < $post_count; $i++) {
				$lc_inward_serial_number_id = mysqli_real_escape_string ($conn, trim ($_POST['inward_serial_number_id'][$i]));
				$multi_query .= "(NULL, ".$lc_outward_id.", 'O', ".$lc_inward_serial_number_id."),";
				$serial_numbers_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_serial_number FROM tb_inward_serial_numbers WHERE fd_inward_serial_number_id = ".$lc_inward_serial_number_id.";"));
				$serial_numbers [] = $serial_numbers_result_array['fd_serial_number'];
			}
			$multi_query = substr_replace ($multi_query, ";", -1);
			mysqli_query ($conn, $multi_query);

			for ($i = $post_count; $i < $db_count; $i++) {
				$result_row = mysqli_fetch_row ($result_set);
				mysqli_query ($conn, "DELETE FROM tb_outward_serial_numbers WHERE fd_outward_serial_number_id = ".$result_row[0].";");
			}

			$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$lc_item_id.";"));
			$lc_item_name = $item_result_row[0];
			$item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$lc_item_type_id.";"));
			$lc_item_type = $item_type_result_row[0];
			$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$lc_item_manufacturer_id.";"));
			$lc_item_manufacturer = $item_manufacturer_result_row[0];
			$station_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_station_id, fd_name FROM tb_stations WHERE fd_station_id = ".$lc_station_id.";"));

			echo (json_encode (array ('success' => "Outward #".$lc_outward_id." Updated Successfully.", 'outward' => array ('outward_id' => $lc_outward_id, 'date' => $_POST['tx_date'], 'station_id' => $lc_station_id, 'station' => $station_result_array['fd_name'], 'item' => $lc_item_name, 'item_type' => $lc_item_type, 'item_manufacturer' => $lc_item_manufacturer, 'quantity' => $lc_quantity, 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'mode_of_dispatch' => $lc_mode_of_dispatch, 'remarks' => $lc_remarks, 'action' => '<input type="checkbox" data-outward_id="'.$lc_outward_id.'" class="ch_outward_id"/> Select for Dispatch Report<br><button class="btn btn-warning bt_edit btn-xs" data-outward_id="'.$lc_outward_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-outward_id="'.$lc_outward_id.'">Delete</button>'))));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
	} else
		echo (json_encode (array ('error' => "Permission Denied")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>