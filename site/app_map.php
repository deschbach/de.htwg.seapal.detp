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
    
    <script Type="text/javascript" src="fancywebsocket.js"></script>
	<script type="text/javascript" src="chat.js"></script>
	
	<link rel="stylesheet" href="style.css" type="text/css" />
	<style>
		input, textarea {border:1px solid #CCC;margin:0px;padding:0px}
		#log {width:100%;height:400px}
		#message {width:100%;line-height:20px}
	</style>
    
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
    	<div id="map_canvas" style="width:50%; float:left;"></div>
    	<div id="chat" style="width:50%; background: #EEEEEE; float:right; height:100%;" align="center">
    		<br>
    		<div id="chat-area" style="height:60%; width:90%; background-color: white;"></div>
    		<br>
    		<form id="send-message-form">
            	<p>Your message: </p>
            	<textarea id="send-message-box" maxlength = '100' style="border:1px solid #CCC;margin:0px;padding:0px; width:300px;"></textarea>
            </form>
    	</div>
    </div>
    <div id="temporaryMarkerContextMenu"></div>
    <div id="fixedMarkerContextMenu"></div>
    <div id="routeContextMenu_active"></div>
    <div id="routeContextMenu_inactive"></div>
</body>
</html>
