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
                    <% if (submenu_id == 1) {
                      out.print("class='selected_submenu_item'");
                  }%>><a href="app_map.jsp">Map</a>
                </li>
                <li
                    <% if (submenu_id == 2) {
                      out.print("class='selected_submenu_item'");
                  }%>><a href="app_boatinfo.jsp">Logbuch</a>
                </li>
                <li
                    <% if (submenu_id == 3) {
                      out.print("class='selected_submenu_item'");
                  }%>><a href="app_trip.jsp">Routen</a>
                </li>
                <li
                    <% if (submenu_id == 4) {
                      out.print("class='selected_submenu_item'");
                  }%>><a href="app_waypoint.jsp">Wegpunkte</a>
                </li>
            </ul>
        </div>
    </div>
</div>