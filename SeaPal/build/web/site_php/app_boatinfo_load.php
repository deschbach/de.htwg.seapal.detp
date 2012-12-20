<?php

	$bnr = 0;
	
    if ($_GET['bnr'])
    	$bnr = urldecode($_GET['bnr']);
    
    $conn = mysql_connect("localhost","root","root");

    $db_selected = mysql_select_db('SeaPal', $conn);

	if (!$db_selected) {
		die ('Can\'t use foo : ' . mysql_error());
	}
						
	$sql = "SELECT * FROM bootinfo WHERE bnr = '$bnr';";
    
    $result = mysql_query($sql,$conn);

	if (!$result) {
		die('Invalid query: ' . mysql_error());
	}
	
	$row = mysql_fetch_array($result);
	
	echo json_encode($row);													
?>
                       
                       