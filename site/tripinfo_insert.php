<?php

	$conn = mysql_connect("localhost","root","");
						
	$db_selected = mysql_select_db('SeaPal', $conn);
						
	if (!$db_selected) {
		die ('Can\'t use foo : ' . mysql_error());
	}
						
	$sql = "INSERT INTO tripinfo(titel, von, nach, skipper, crew, tstart, tende, tdauer, motor, tank) 
								 VALUES('$_POST[titel]',
										'$_POST[von]',
										'$_POST[nach]',
										'$_POST[skipper]',
										'$_POST[crew]',
										'$_POST[tstart]',
										'$_POST[tende]',
										'$_POST[tdauer]',
										'$_POST[motor]',
										'$_POST[tank]');";
						
	$result = mysql_query($sql,$conn);
	
	if (!$result) {
		die('Invalid query: ' . mysql_error());
	}

	mysql_close($conn);
	
	header('Location: tripinfo.php');

?>