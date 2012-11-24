<?php
                                if ($_GET['bootname'])
                                	$bootname = urldecode($_GET['bootname']);
                                
                                
                                $conn = mysql_connect("localhost","root","root");
						
                                $db_selected = mysql_select_db('SeaPal', $conn);
						
								if (!$db_selected) {
									die ('Can\'t use foo : ' . mysql_error());
								}
													
								$sql = "SELECT * FROM bootinfo WHERE bootname = '$bootname';";
                                
                                $result = mysql_query($sql,$conn);
						
								if (!$result) {
									die('Invalid query: ' . mysql_error());
								}
								
								$row = mysql_fetch_array($result);
									
								
                            ?>
                            <table id="form_table" cellspacing="0px" cellpadding="5px">
                          <thead>
		                	<tr>
			                	<th colspan="6" align="center">Boat Informations</th>
		                	</tr>
	                	</thead> 
	                	<tbody> 
                		<tr>
                			<td><label for="bootname">Bootsname</label></td>
                			<td><input type="text" name="bootname" id="bootname" value="<?php echo($row['bootname']);?>"/></td>
                			<td><label for="typ">Typ</label></td>
                			<td><input type="text" name="typ" id="typ" value="<?php echo($row['typ']);?>"/></td>
                			<td><label for="baujahr">Baujahr</label></td>
                			<td><input type="text" name="baujahr" id="baujahr" value="<?php echo($row['baujahr']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="registernummer">Registernummer</label></td>
                			<td><input type="text" name="registernummer" id="registernummer" value="<?php echo($row['registernummer']);?>"/></td>
                			<td><label for="konstrukteur">Konstrukteur</label></td>
                			<td><input type="text" name="konstrukteur" id="konstrukteur" value="<?php echo($row['konstrukteur']);?>"/></td>
                			<td><label for="motor">Motor</label></td>
                			<td><input type="text" name="motor" id="motor" value="<?php echo($row['motor']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="segelzeichen">Segelzeichen</label></td>
                			<td><input type="text" name="segelzeichen" id="segelzeichen" value="<?php echo($row['segelzeichen']);?>"/></td>
                			<td><label for="laenge">L&auml;nge</label></td>
                			<td><input type="text" name="laenge" id="laenge" value="<?php echo($row['laenge']);?>"/></td>
                			<td><label for="tankgroesse">Tankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="tankgroesse" id="tankgroesse" value="<?php echo($row['tankgroesse']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="heimathafen">Heimathafen</label></td>
                			<td><input type="text" name="heimathafen" id="heimathafen" value="<?php echo($row['heimathafen']);?>"/></td>
                			<td><label for="breite">Breite</label></td>
                			<td><input type="text" name="breite" id="breite" value="<?php echo($row['breite']);?>"/></td>
                			<td><label for="wassertankgroesse">Wassertankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="wassertankgroesse" id="wassertankgroesse" value="<?php echo($row['wassertankgroesse']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="yachtclub">Yachtclub</label></td>
                			<td><input type="text" name="yachtclub" id="yachtclub" value="<?php echo($row['yachtclub']);?>"/></td>
                			<td><label for="tiefgang">Tiefgang</label></td>
                			<td><input type="text" name="tiefgang" id="tiefgang" value="<?php echo($row['tiefgang']);?>"/></td>
                			<td><label for="abwassertankgroesse">Abwassertankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="abwassertankgroesse" id="abwassertankgroesse" value="<?php echo($row['abwassertankgroesse']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="eigner">Eigner</label></td>
                			<td><input type="text" name="eigner" id="eigner" value="<?php echo($row['eigner']);?>"/></td>
                			<td><label for="masthoehe">Masth&ouml;he</label></td>
                			<td><input type="text" name="masthoehe" id="masthoehe" value="<?php echo($row['masthoehe']);?>"/></td>
                			<td><label for="grosssegelgroesse">Gro&szlig;segelgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="grosssegelgroesse" id="grosssegelgroesse" value="<?php echo($row['grosssegelgroesse']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="versicherung">Versicherung</label></td>
                			<td><input type="text" name="versicherung" id="versicherung" value="<?php echo($row['versicherung']);?>"/></td>
                			<td><label for="verdraengung">Verdr&auml;ngung</label></td>
                			<td><input type="text" name="verdraengung" id="verdraengung" value="<?php echo($row['verdraengung']);?>"/></td>
                			<td><label for="genuagroesse">Genuagr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="genuagroesse" id="genuagroesse" value="<?php echo($row['genuagroesse']);?>"/></td>
                		</tr>
                		<tr>
                			<td><label for="rufzeichen">Rufzeichen</label></td>
                			<td><input type="text" name="rufzeichen" id="rufzeichen" value="<?php echo($row['rufzeichen']);?>"/></td>
                			<td><label for="rigart">Rig-Art</label></td>
                			<td><input type="text" name="rigart" id="rigart" value="<?php echo($row['rigart']);?>"/></td>
                			<td><label for="spigroesse">Spigr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="spigroesse" id="spigroesse" value="<?php echo($row['spigroesse']);?>"/></td>
                		</tr>
                		</tbody>
                	</table>
             