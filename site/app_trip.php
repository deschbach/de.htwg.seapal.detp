<html>
    <?php
    	
    	$bnr = 0;
    	$menu_title = "app";
		$menu_id = 2;
		$submenu_id = 3;
		include('header.php');
		include('app_menu.php');
	?>
    <body style="overflow: none;">
    	<div id="appWrapper" align="center">
			<br>
			<h2>Routen</h2>
			<br>
			<div class="appTableDiv" id="appRoutelist" align="center">
				<table class="appTable" cellspacing="0px" cellpadding="5px">
					<thead>
	                    <tr>
	                        <th>Titel</th>
	                        <th>Skipper</th>
	                        <th>Start</th>
	                        <th>Ende</th>
	                        <th>Dauer</th>
	                        <th>Motor</th>     
	                        <th></th>
	                    </tr>
	                </thead>
					<tbody class="appTableBody">
						<?php
                            
                            $conn = mysql_connect("localhost","root","root");
					
                            $db_selected = mysql_select_db('SeaPal', $conn);
					
							if (!$db_selected) {
								die ('Can\'t use foo : ' . mysql_error());
							}
												
							$sql = "SELECT * FROM tripinfo;";
                            
                            $result = mysql_query($sql,$conn);
					
							if (!$result) {
								die('Invalid query: ' . mysql_error());
							}
							
							while ($row = mysql_fetch_array($result)) {
							
								echo("<tr onclick=\"loadValues('" . $row['tnr'] . "');\">");
								echo("<td>" . $row['titel'] . "</td>");
								echo("<td>" . $row['skipper'] . "</td>");
								echo("<td>" . $row['tstart'] . "</td>");
								echo("<td>" . $row['tende'] . "</td>");
								echo("<td>" . $row['tdauer'] . "</td>");
								echo("<td>" . $row['motor'] . "</td>");
								echo("<td align='right'><a href='app_tripinfo.php?tnr=" . $row['tnr'] . "'><img src='../img/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
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
		<script>
		
			$("#bootSelect").change(function() {
				
				alert('Load routes for this boat.');
				
			});
		
		</script>
	</body>
<html>