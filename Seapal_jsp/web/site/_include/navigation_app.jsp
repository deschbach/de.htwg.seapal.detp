<% String filename_navapp = request.getRequestURI().replaceAll(".jsp", "").replaceAll(".*/", "");%>

<!-- App Navigation -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">		
            <ul class="nav">
                <li <% if (filename_navapp.equals("app_map")) {
                        out.print("class='active'");
                    }%>><a href="app_map.jsp">Map</a></li>
                <li <% if (filename_navapp.equals("app_boatinfo")) {
                        out.print("class='active'");
                    }%>><a href="app_boatinfo.jsp">Logbuch</a></li>
                <li <% if (filename_navapp.equals("app_trip") || filename_navapp.equals("app_tripinfo") || filename_navapp.equals("app_waypoint")) {
                        out.print("class='active'");
                    }%>><a href="app_trip.jsp">Routen</a></li>
            </ul>
            <ul class="navbar-form pull-right" style="list-style-type: none;">
                <li><a class="btn" id="startSimulation"><i class="icon-play"></i></a><li>
            </ul>
        </div>
    </div>
</div>