<?php
    	
    $menu_title = "app";
		$menu_id = 2;
		$submenu_id = 4;
		include('header.php');
		include('app_map_header.php');
        include('app_menu.php');
        
        $wnr = 0;
        if ($_GET['wnr']) {
	        $wnr = urldecode($_GET['wnr']);
        }
        	
	?>
<body onload="initialize()" style="overflow: none;">
	<div id="appWrapper" align="center">
		<br>
    	<h2>Wegpunkt</h2>
    	<br>
    	<div id="waypointInputDiv">
    		<div id="waypointInput">
    			<table>
    				<tbody>
    					<tr>
    						<td><label for="name">Name</label></td>
    						<td><input type="text" name="name"/></td>
    					</tr>
    					<tr>
    						<td><label for="lat">Latitude</label></td>
    						<td><input type="text" name="lat"/></td>
    						<td><label for="lng">Longitude</label></td>
    						<td><input type="text" name="lng"/></td>
    					</tr>
    					<tr>
    						<td><label for="COG">COG</label></td>
    						<td><input type="text" name="COG"/></td>
    						<td><label for="SOG">SOG</label></td>
    						<td><input type="text" name="SOG"/></td>
    						<td><label for="atdate">at</label></td>
    						<td><input class="appInput" type="date" name="atdate"/></td>
    						<td><input class="appInput" type="time" name="attime"/></td>
    					</tr>
    					<tr>
    						<td><label for="btm">BTM</label></td>
    						<td><input type="text" name="BTM"/></td>
    						<td><label for="dtm">DTM</label></td>
    						<td><input type="text" name="DTM"/></td>
    						<td><label for="fahrtziel">Fahrt nach  </label></td>
    						<td><select name="fahrtziel" id="fahrtziel"><option>Marker 1</option></select></td>
    					</tr>
    					<tr>
    						<td><label for="manoever">Manoever  </label></td>
    						<td>
	    						<select name="manoever" id="manoever" style="width: 150px;">
						            <option value="mandef" selected="selected">-</option>
						            <option value="man1">Tack</option>
						            <option value="man2">Jibe</option>
						            <option value="man3">Lay to</option>
						            <option value="man4">Set sails</option>
						            <option value="man5">change Sails</option>
						            <option value="man6">Reff</option>
						            <option value="man7">Anker up</option>
						            <option value="man8">Anker down</option>
						        </select>
    						</td>
    						<td><label for="vorsegel">Vorsegel   </label></td>
    						<td>
	    						<select name="vorsegel" id="vorsegel" style="width: 150px;">
						            <option value="vorsegeldef" selected="selected">-</option>
						            <option value="vorsegel1">Genua1</option>
						            <option value="vorsegel2">Genua2</option>
						            <option value="vorsegel3">Genua3</option>
						            <option value="vorsegel4">Fock</option>
						            <option value="vorsegel5">Storm Fock</option>
						            <option value="vorsegel6">Blister</option>
						            <option value="vorsegel7">Spinaker</option>
						        </select>
    						</td>
    						<td><label for="grosssegel">Manoever  </label></td>
    						<td>
	    						<select name="grosssegel" id="grosssegel" style="width: 150px;">
						            <option value="grosssegeldef" selected="selected">-</option>
						            <option value="grosssegel1">full</option>
						            <option value="grosssegel2">reef 1</option>
						            <option value="grosssegel3">reef 2</option>
						        </select>
    						</td>
    					</tr>
    				</tbody>
    			</table>		        
		    </div>
    	</div>
	    <br>
	    <br>
	    <div id="appInfoDiv">
		    <div class="appInfoSection" id="appNotes">
		    	<textarea id="appInfoTextarea"></textarea>
			</div>
			<div class="appInfoSection" id="appInfoMap">
				<div id="appMarkerMap"></div>
			</div>
			<div class="appInfoSection" id="appPhotos">
				<img src="../img/no_image.jpg" id="appInfoPhoto"/>
			</div>
		</div>
	</div>
</body>
<script>
	
	function initialize() {

	    // set different map types
	    var mapTypeIds = ["roadmap", "satellite", "OSM"];
	
	    // set map Options
	    var mapOptions = {
	        center: new google.maps.LatLng(47.66, 9.16),
	        zoom: 14,
	        mapTypeId: google.maps.MapTypeId.ROADMAP,
	        mapTypeControlOptions: {
	            mapTypeIds: mapTypeIds
	        }
	    };
	
	    // initialize map
	    map = new google.maps.Map(document.getElementById("appInfoMap"), mapOptions);
	
	    // set client position
	    currentPosition = new google.maps.LatLng(47.66, 9.16)
	
	    var currentMarkerOptions = {
	        position: currentPosition,
	        map: map,
	        icon: currentPositionMarkerImage,
	        draggable: true
	    }
	
	    // initialize marker for current position
	    currentPositionMarker = new google.maps.Marker(currentMarkerOptions);
	    currentPositionMarker.setMap(map);

	}


</script>
</html>
