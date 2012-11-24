<html>
    <?php
    	
    	$menu_title = "app";
		$menu_id = 2;
		$submenu_id = 3;
		include('header.php');
		include('app_menu.php');
	?>
    <body>
		<form method="post" action="app_tripinfo_insert.php">
			<div class="outer_frame">
				<div class="inner_frame" id="tripinfo">
					<div>
						<table>
							<tr>
								<td>Trip title</td>
								<td colspan="4">
									<input type="text" name="titel" id="titel" size="50%"/>
								<td>
							</tr>
                            <tr>
								<td>Von</td>
								<td>
									<input type="text" name="von" id="von"/>
								<td>
								<td>Crew</td>
								<td rowspan="3">
									<textarea cols="20" rows="3">
									</textarea>
								</td>
								<td>Start</td>
								<td>
									<input type="text" name="tstart" id="tstart"/>
								</td>
                            </tr>
							<tr>
								<td>Nach</td>
								<td>
									<input type="text" name="nach" id="nach"/>
								</td>
								<td></td><td></td>
								<td>Ende</td>
								<td>
									<input type="text" name="tende" id="tende"/>
								</td>
								<td>Motor(min)</td>
								<td>
									<input type="text" name="motor" id="motor"/>
								</td>
							</tr>
							<tr>
								<td>Skipper</td>
								<td>
									<input type="text" name="skipper" id="skipper"/>
								</td>
								<td></td><td></td>
								<td>Dauer</td>
								<td>
									<input type="text" name="tdauer" id="tdauer"/>
								</td>
								<td>Tank gef&uuml;llt</td>
								<td>
									<input type="checkbox" name="tank" id="tank"/>
								</td>
							</tr>
							<tr>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="outer_frame">
				<div class="inner_frame" id="notes">
					<div>
						NOTES
					</div>
				</div>
				<div class="inner_frame" id="map">
					<div>
						MAP
					</div>
				</div>
				<div class="inner_frame" id="photos">
					<div>
						PHOTOS
					</div>
				</div>
				<div class="clear_left">
				</div>
			</div>
			<div class="outer_frame">
				<div class="inner_frame" id="waypoints">
					<div>
						<table width="100%">
							<tbody>
								
							<?php
                                
                                $conn = mysql_connect("localhost","root","root");
						
                                $db_selected = mysql_select_db('SeaPal', $conn);
						
								if (!$db_selected) {
									die ('Can\'t use foo : ' . mysql_error());
								}
													
								$sql = "SELECT tnr FROM wegpunkte WHERE wegpunkte.tnr = 7;";
                                
                                $result = mysql_query($sql,$conn);
						
								if (!$result) {
									die('Invalid query: ' . mysql_error());
								}
								
								while ($row = mysql_fetch_array($result)) {
								
									echo("<tr>");
									
									echo("<td>" . $row['name'] . "</td>");
									echo("<td>" . $row['position'] . "</td>");
									echo("<td>" . $row['btm'] . "</td>");
									echo("<td>" . $row['dtm'] . "</td>");
									echo("<td>" . $row['manoever'] . "</td>");
									echo("<td>" . $row['vorsegel'] . "</td>");
									echo("<td><input type='button' name='" . $row['wnr'] . "' class='load' value='load'/></td>");
									echo("<td align='right'><a href=''><img src='../images/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
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
		</form>
		<?php include('footer.php'); ?>
	</body>
<html>