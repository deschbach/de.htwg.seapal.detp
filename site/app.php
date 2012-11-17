<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<?php 
		$menu_title = "app";
		$menu_id = 2;
		include('header.php'); 
		
	?>
	
		<div id="wrapper">
			<div id="page" class="container">
				<div id="content">
					
					<?php
					
						$conn = mysql_connect("localhost","root","");
						
						$db_selected = mysql_select_db('SeaPal', $conn);
						
						if (!$db_selected) {
							die ('Can\'t use foo : ' . mysql_error());
						}
						
						$sql = "SELECT * FROM benutzer";
						
						$result = mysql_query($sql,$conn);
						
						if (!$result) {
							die('Invalid query: ' . mysql_error());
						}
						
						$row = mysql_fetch_row($result);

						echo $row[0];
						echo $row[1];
						echo $row[2];
						echo $row[3];
						echo $row[4];
						echo $row[5];
						echo $row[6];
						
						mysql_close($conn);
						
					?>
					
					<div style="clear: both;">
						&nbsp;
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<div id="box1">
						<h2>Components</h2>
						<ul class="list-style1">
							<li class="first"><a href="boatinfo.php">Boatinfo</a></li>
							<li><a href="tripinfo.php">Tripinfo</a></li>
							<li><a href="waypoint.php">Waypoint</a></li>
							<li><a href="map.html">Map</a></li>
						</ul>
					</div>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">
					&nbsp;
				</div>
			</div>
			<!-- end #page -->
		</div>
		<?php include('footer.php'); ?>
	</body>
</html>