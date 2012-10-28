<?php

	$conn = mysql_connect("localhost","root","");
						
	$db_selected = mysql_select_db('SeaPal', $conn);
						
	if (!$db_selected) {
		die ('Can\'t use foo : ' . mysql_error());
	}
						
	$sql = "INSERT INTO bootinfo(bootname, registernummer, segelzeichen, heimathafen, yachtclub, eigner, versicherung,
								 rufzeichen, typ, konstrukteur, laenge, breite, tiefgang, masthoehe, verdraengung, rigart,
								 baujahr, motor, tankgroesse, wassertankgroesse, abwassertankgroesse, grosssegelgroesse,
								 genuagroesse, spigroesse) 
								 VALUES('$_POST[bootname]',
										'$_POST[registernummer]',
										'$_POST[segelzeichen]',
										'$_POST[heimathafen]',
										'$_POST[yachtclub]',
										'$_POST[eigner]',
										'$_POST[versicherung]',
										'$_POST[rufzeichen]',
										'$_POST[typ]',
										'$_POST[konstrukteur]',
										'$_POST[laenge]',
										'$_POST[breite]',
										'$_POST[tiefgang]',
										'$_POST[masthoehe]',
										'$_POST[verdraengung]',
										'$_POST[rigart]',
										'$_POST[baujahr]',
										'$_POST[motor]',
										'$_POST[tankgroesse]',
										'$_POST[wassertankgroesse]',
										'$_POST[abwassertankgroesse]',
										'$_POST[großsegelgroesse]',
										'$_POST[genuagroesse]',
										'$_POST[spigroesse]');";
						
	$result = mysql_query($sql,$conn);
						
	if (!$result) {
		die('Invalid query: ' . mysql_error());
	}

	mysql_close($conn);
	
	header('Location: boatinfo.php');

?>