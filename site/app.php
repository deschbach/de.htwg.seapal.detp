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
    		<label style="margin-left:20px">Latitude:</label>
            <input type="text" id="lat" disabled="disabled" />
            <label>Longitude:</label>
            <input type="text" id="long" disabled="disabled" />
    	</div>
    	 <div id="routeMenuContainer">
                <div id="routeMenu">
                    <input type="button" value="Route l&ouml;schen" id="deleteRouteButton" class="routeButton" onclick="javascript: deleteRoute()" />
                    <input type="button" value="Route beenden" id="stopRouteButton" class="routeButton" onclick="javascript: stopRouteMode()" />
                    <input type="button" value="Route speichern" id="saveRouteButton" class="routeButton" />
                </div>
            </div>
    	<div id="map_canvas"></div>
    </div>
    <div id="temporaryMarkerContextMenu"></div>
    <div id="fixedMarkerContextMenu"></div>
    <div id="routeContextMenu"></div>
</body>
</html>
