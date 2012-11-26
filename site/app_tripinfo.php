<html>
    <?php
    	
    	$menu_title = "app";
		$menu_id = 2;
		$submenu_id = 4;
		include('header.php');
		include('app_menu.php');
	?>
    <body style="overflow: none;">
    	<div id="appWrapper" align="center">
    		<br>
    		<h2>Routen Informationen</h2>
    		<br>
			<div class="appInputDiv">
				<table>
					<thead>
					<tr>
						<td>Trip title</td>
						<td colspan="4"><input type="text" name="titel" id="titel" size="50%"/></td>
					</tr>
					</thead>
					<tbody>
                    <tr>
						<td>Von</td>
						<td><input type="text" name="von" id="von"/><td/>
						<td>Crew</td>
						<td rowspan="3"><textarea cols="20" rows="3"></textarea></td>
						<td>Start</td>
						<td><input type="text" name="tstart" id="tstart"/></td>
                    </tr>
					<tr>
						<td>Nach</td>
						<td><input type="text" name="nach" id="nach"/></td><td></td><td></td>
						<td>Ende</td>
						<td><input type="text" name="tende" id="tende"/></td>
						<td>Motor(min)</td>
						<td><input type="text" name="motor" id="motor"/></td>
					</tr>
					<tr>
						<td>Skipper</td>
						<td><input type="text" name="skipper" id="skipper"/>
						</td><td></td><td></td>
						<td>Dauer</td>
						<td><input type="text" name="tdauer" id="tdauer"/></td>
						<td>Tank gef&uuml;llt</td>
						<td><input type="checkbox" name="tank" id="tank"/></td>
					</tr>
					<tr>
					</tr>
					</tbody>
				</table>
			</div>
			
			<br>
			<div class="appTableDiv" id="tripinfo" align="center">
				<table class="appTable" cellspacing="0px" cellpadding="5px">
					<thead>
	                    <tr>
	                        <th>Name</th>
	                        <th>Breite</th>
	                        <th>Laenge</th>
	                        <th>Peilung</th>
	                        <th>Abstand</th>
	                        <th>Manoever</th>     
	                        <th></th>
	                    </tr>
	                </thead>
					<tbody class="appTableBody">
						<?php
                            
                            $tnr = 1;
                            
                            if ($_GET['tnr'])
                            	$bnr = urldecode($_GET['tnr']);
                            
                            $conn = mysql_connect("localhost","root","root");
					
                            $db_selected = mysql_select_db('SeaPal', $conn);
					
							if (!$db_selected) {
								die ('Can\'t use foo : ' . mysql_error());
							}
												
							$sql = "SELECT * FROM wegpunkte WHERE tnr =" . $tnr . ";";
                            
                            $result = mysql_query($sql,$conn);
					
							if (!$result) {
								die('Invalid query: ' . mysql_error());
							}
							
							while ($row = mysql_fetch_array($result)) {
							
								echo("<tr onclick=\"loadValues('" . $row['wnr'] . "');\">");
								echo("<td>" . $row['name'] . "</td>");
								echo("<td>" . $row['lat'] . "</td>");
								echo("<td>" . $row['lng'] . "</td>");
								echo("<td>" . $row['btm'] . "</td>");
								echo("<td>" . $row['dtm'] . "</td>");
								echo("<td>" . $row['manoever'] . "</td>");
								echo("<td align='right'><a href='app_waypoint.php?wnr=" . $row['tnr'] . "'><img src='../img/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
								echo("</tr>");
								
							}
	
							mysql_close($conn);
							
                        ?>
					</tbody>
				</table>
			</div>
			<input type="reset" id="delete" value="L&ouml;schen" class="button"/>
            <input type="submit" id="save" name="submit" value="Speichern" class="button"/>
		</div>
		</div>
	</body>
<html>