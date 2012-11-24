<!--
	    	<label>Latitude:</label>
            <input type="text" id="lat" disabled="disabled" />
            <label>Longitude:</label>
            <input type="text" id="long" disabled="disabled" />
            -->
<div id="submenu_wrapper">
    <div id="submenu_wrapper_2">
        <div id="submenu">
          <ul>
            <li
              <?php if ($submenu_id == 1) echo("class='selected_submenu_item'"); ?>><a href="app_map.php">Map</a>
            </li>
            <li
              <?php if ($submenu_id == 2) echo("class='selected_submenu_item'"); ?>><a href="app_boatinfo.php">Logbuch</a>
            </li>
            <li
              <?php if ($submenu_id == 3) echo("class='selected_submenu_item'"); ?>><a href="app_tripinfo.php">Routen</a>
            </li>
            <li
              <?php if ($submenu_id == 4) echo("class='selected_submenu_item'"); ?>><a href="app_waypoint.php">Wegpunkte</a>
            </li>
          </ul>
        </div>
    </div>
</div>