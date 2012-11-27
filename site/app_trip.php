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
						<td rowspan="3"><textarea cols="20" rows="3" id="crew"></textarea></td>
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
			<br>
			<script type="text/javascript">
	        function loadValues(routenr) { 
	        	
	        	$.ajax({
	        		url: "app_trip_load.php",
		        	data: {
		        		   'tnr': routenr
		        		  },
		        	dataType: "json",	
	        	}).done(function(data) {
		        	
		        	document.getElementById('titel').value = data['titel'];
		        	document.getElementById('von').value = data['von'];
		        	document.getElementById('nach').value = data['nach'];
		        	document.getElementById('tstart').value = data['tstart'];
		        	document.getElementById('tende').value = data['tende'];
		        	document.getElementById('tdauer').value = data['tdauer'];
		        	document.getElementById('skipper').value = data['skipper'];
					document.getElementById('crew').value = data['crew'];
					document.getElementById('motor').value = data['motor'];
					document.getElementById('tank').value = data['tank'];
		
	        	});
		
	        }
	        </script>
			
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