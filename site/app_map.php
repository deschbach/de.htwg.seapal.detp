<html>
<head>
    <?php 
    	$menu_title = "app";
		$menu_id = 2;
		$submenu_id = 1;
		include('header.php');
    	include('app_map_header.php');
        include('app_menu.php');
    ?>
</head>
<body onload="initialize()">

    <div id="routeMenuContainer">
        <div id="routeMenu">
            <div id="route_buttons">
                <input type="button" value="Route l&ouml;schen" id="deleteRouteButton" class="routeButton" onclick="javascript: deleteRoute()" />
                <input type="button" value="Route beenden" id="stopRouteButton" class="routeButton" onclick="javascript: stopRouteMode()" />
                <input type="button" value="Route speichern" id="saveRouteButton" class="routeButton" onclick="javascript: saveRoute()" />
            </div>
            <div id="route_distance">Routen-L&auml;nge: <span id="route_distance_number"></span>m</div>
        </div>
    </div>
	<div id="distanceToolContainer">
        <div id="distanceToolMenu">
            <div id="distanceTool_buttons">
                <input type="button" value="Distanzmessung beenden" id="stopDistanceToolButton" class="distanceToolbutton" onclick="javascript: stopDistanceToolMode()" />
            </div>
            <div id="distanceTool_distance">Distanz: <span id="distanceTool_number"></span>m</div>
        </div>
    </div>
    <div id="appWrapper">
    	<div id="map_canvas"></div>
    </div>
    <div id="temporaryMarkerContextMenu"></div>
    <div id="fixedMarkerContextMenu"></div>
    <div id="routeContextMenu_active"></div>
    <div id="routeContextMenu_inactive"></div>

</body>
</html>
