
var routeArray = new Array();
var currentRoute = null;
var draggedMarkerIndex = null;
var selectedRouteMarker = null;

var activePathOptions = {
    strokeOpacity: 1.0,
    strokeWeight: 3
}

var inactivePathOptions = {
    strokeOpacity: 0.5,
    strokeWeight: 2
}
var distanceToolOptions = {
    strokeColor: "#FFFF00",
    strokeOpacity: 0.7,
    strokeWeight: 3
}

function Route(route) {
    this.route = route;
    this.markerArray = new Array();
    this.length = 0;
}

// route context menu ------------------------------------------------ //
$(function () {
    $.contextMenu({
        selector: '#routeContextMenu_active',
        callback: function (key, options) {
            if (key == "deleteMarker") {
                deleteRouteMarker();
            } else if (key == "addMarker") {
                var position = selectedRouteMarker.position;
                var index;
                for (var i = currentRoute.markerArray.length; i > 0; i--) {
                    if (currentRoute.markerArray[i - 1].position == position) {
                        index = i;
                        break;
                    }
                }
                addRouteMarker(position, index);
            }
        },
        items: {
            "deleteMarker": { name: "Wegpunkt l&ouml;schen", icon: "deleteMarker" },
            "addMarker": { name: "Wegpunkt hinzuf&uuml;gen", icon: "addMarker" }
        }
    });
});

$(function () {
    $.contextMenu({
        selector: '#routeContextMenu_inactive',
        callback: function (key, options) {
            if (key == "selectRoute") {
                if (currentRoute != null) {
                    toggleDraggable(currentRoute);
                    currentRoute.route.setOptions(inactivePathOptions);
                }
                currentRoute = getRouteByMarker(selectedRouteMarker);
                currentMode = MODE.ROUTE;
                currentRoute.route.setOptions(activePathOptions);
                toggleDraggable(currentRoute);
                updateRouteDistance();
                document.getElementById('routeMenuContainer').style.display = "block";
            }
        },
        items: {
            "selectRoute": { name: "Diese Route ausw&auml;hlen", icon: "selectRoute" }
        }
    });
});

function addRouteMarker(position, index) {

    var path = currentRoute.route.getPath();

    var marker = new google.maps.Marker({
        position: position,
        map: map,
        icon: routeMarkerImage,
        draggable: true
    });

    google.maps.event.addListener(marker, 'click', function (event) {
        selectedRouteMarker = getRouteMarker(event.latLng);
        var pixel = fromLatLngToPixel(event.latLng);
        if (getRouteByMarker(selectedRouteMarker) == currentRoute) {
            $('#routeContextMenu_active').contextMenu({ x: pixel.x, y: pixel.y });
        } else {
            $('#routeContextMenu_inactive').contextMenu({ x: pixel.x, y: pixel.y });
        }
    });

    google.maps.event.addListener(marker, 'dragstart', function (event) {
        selectedRouteMarker = getRouteMarker(event.latLng);
        var path = currentRoute.route.getPath();
        path.forEach(function (item, index) {
            if (path.getAt(index) == selectedRouteMarker.position) {
                draggedMarkerIndex = index;
            }
        });
    });

    google.maps.event.addListener(marker, 'drag', function (event) {
        var path = currentRoute.route.getPath();
        path.removeAt(draggedMarkerIndex);
        path.insertAt(draggedMarkerIndex, selectedRouteMarker.position);
        updateRouteDistance();
    });

    marker.setMap(map);

    if (index == null) {
        path.push(position);
        currentRoute.markerArray.push(marker);
    } else {
        if (index == currentRoute.markerArray.length) {
            index--;
        }

        var coords1, coords2;
        if (currentRoute.markerArray.length > 1) {
            coords1 = currentRoute.markerArray[index - 1].getPosition();
        } else {
            coords1 = currentRoute.markerArray[index].getPosition();
        }
        coords2 = currentRoute.markerArray[index].getPosition();

        var newPosition = new google.maps.LatLng((coords1.lat() + coords2.lat()) / 2, (coords1.lng() + coords2.lng()) / 2);

        path.insertAt(index, newPosition);
        marker.setPosition(newPosition);
        currentRoute.markerArray.splice(index, 0, marker);
    }

    updateRouteDistance();

}

// removes selected route marker
function deleteRouteMarker() {
    selectedRouteMarker.setMap(null);
    currentRoute.markerArray.splice(currentRoute.markerArray.indexOf(selectedRouteMarker), 1);
    var path = currentRoute.route.getPath();
    path.forEach(function (item, index) {
        if (path.getAt(index) == selectedRouteMarker.position) {
            path.removeAt(index);
        }
    });

    updateRouteDistance();

    if (currentRoute.markerArray.length == 0) {
        stopRouteMode();
    }
}

function updateRouteDistance() {

    currentRoute.length = 0;

    for (var i = 0; i < currentRoute.markerArray.length - 1; i++) {
        currentRoute.length += getDistance(currentRoute.markerArray[i].position, currentRoute.markerArray[i + 1].position);
    }

    if (currentMode == MODE.DISTANCE) {
        document.getElementById("distanceTool_number").innerHTML = currentRoute.length;
    } else {
        document.getElementById("route_distance_number").innerHTML = currentRoute.length;
    }
}

function startNewRoute(position, isDistanceToolRoute) {

    var route;

    if (isDistanceToolRoute) {
        route = new google.maps.Polyline(distanceToolOptions);
        document.getElementById('distanceToolContainer').style.display = "block";
        currentMode = MODE.DISTANCE;
    } else {
        route = new google.maps.Polyline(activePathOptions);
        document.getElementById('routeMenuContainer').style.display = "block";
        currentMode = MODE.ROUTE;
    }

    // delete temp marker & infobox
    if (temporaryMarker != null) { temporaryMarker.setMap(null); }
    if (temporaryMarkerInfobox != null) { temporaryMarkerInfobox.setMap(null); }

    // initialize new route
    currentRoute = new Route(route);
    route.setMap(map);
    routeArray.push(currentRoute);
    addRouteMarker(position);
}

function stopRouteMode() {
    currentMode = MODE.DEFAULT;
    currentRoute.route.setOptions(inactivePathOptions);
    toggleDraggable(currentRoute);
    currentRoute = null;
    document.getElementById('routeMenuContainer').style.display = "none";
    document.getElementById('distanceToolContainer').style.display = "none";

}

function stopDistanceToolMode() {
    deleteRoute();
}

function deleteRoute() {

    currentRoute.route.setMap(null);

    for (var i = 0; i < currentRoute.markerArray.length; i++) {
        currentRoute.markerArray[i].setMap(null);
    }
    routeArray.splice(routeArray.indexOf(currentRoute), 1);
    stopRouteMode();
}

function saveRoute() {
    alert('Save Route!')
}

function toggleDraggable(route) {

    for (var i = 0; i < route.markerArray.length; i++) {
        route.markerArray[i].setDraggable(!route.markerArray[i].getDraggable());
    }

}

function getRouteMarker(latLng) {

    for (var i = 0; i < routeArray.length; i++) {
        for (var j = 0; j < routeArray[i].markerArray.length; j++) {
            if (routeArray[i].markerArray[j].position == latLng) {
                return routeArray[i].markerArray[j];
            }
        }
    }
    return null;
}

function getRouteByMarker(marker) {

    for (var i = 0; i < routeArray.length; i++) {
        for (var j = 0; j < routeArray[i].markerArray.length; j++) {
            if (routeArray[i].markerArray[j] == marker) {
                return routeArray[i];
            }
        }
    }
    return null;
}