<!DOCTYPE html>
<html>
    <head>

        <% String menu_title = "app";%>
        <% int menu_id = 2;%>
        <%@ include file="header.jsp" %>

    </head>
    <body onload="initialize()">
        <%@ include file="navigation.jsp" %>


        <div id="app_wrapper" align="center">
            <div id="app_menu_container">
                <label id="app_left_title"><a href="index.jsp">SeaPal WebApp</a></label>

                <a class="app_links" href="app.jsp">Map</a>
                <a class="app_links" href="boatinfo.jsp">Logbuch</a>
                <a class="app_links" href="tripinfo.jsp">Routen</a>
                <a class="app_links" id="end" href="waypoint.jsp">Wegpunkte</a>
                <label id="app_right_title"><a href="userguide.jsp">SeaPal Help</a></label>
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
