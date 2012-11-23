<!DOCTYPE html>
<html>
<head>
    <?php 
    	$menu_title = "app";
		$menu_id = 2;
    	include('header_app.php');
    ?>
</head>
<body onload="initialize()">

	<?php include('navigation.php'); ?>
	
    <div id="app_wrapper" align="center">
    	<div id="app_menu_container">
    		<label id="app_left_title"><a href="index.php">SeaPal WebApp</a></label>
    		
    		<!--
	    	<label>Latitude:</label>
            <input type="text" id="lat" disabled="disabled" />
            <label>Longitude:</label>
            <input type="text" id="long" disabled="disabled" />
            -->
            
			<a class="app_links" href="app.php">Map</a>
            <a class="app_links" href="boatinfo.php">Logbuch</a>
            <a class="app_links" href="tripinfo.php">Routen</a>
            <a class="app_links" id="end" href="waypoint.php">Wegpunkte</a>
            <label id="app_right_title"><a href="userguide.php">SeaPal Help</a></label>
    	</div>
    	 <div id="routeMenuContainer">
                <div id="routeMenu">
					<div id ="route_buttons">
						<input type="button" value="Route l&ouml;schen" id="deleteRouteButton" class="routeButton" onclick="javascript: deleteRoute()" />
						<input type="button" value="Route beenden" id="stopRouteButton" class="routeButton" onclick="javascript: stopRouteMode()" />
						<input type="button" value="Route speichern" id="saveRouteButton" class="routeButton" onclick="javascript: saveRoute()"/>
					</div>
					<div id="route_distance">Routen-L&auml;nge: <span id="route_distance_number"></span>m</div>
                </div>
            </div>
    	<div id="map_canvas"></div>
    </div>
    <div id="temporaryMarkerContextMenu"></div>
    <div id="fixedMarkerContextMenu"></div>
    <div id="routeContextMenu_active"></div>
	<div id="routeContextMenu_inactive"></div>
    <div id="distanceContextMenu"></div>
    <div id="currentPositionContextMenu"></div>
</body>
</html>
