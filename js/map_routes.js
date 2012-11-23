
var routeArray = new Array();
var currentRoute = null;
var draggedMarkerIndex = null;
var selectedRouteMarker = null;

var activePath = {
    strokeOpacity: 1.0,
    strokeWeight: 3
}

var inactivePath = {
    strokeOpacity: 0.5,
    strokeWeight: 2
}

function Route(route, name, id) {
    this.route = route;
    this.markerArray = new Array();
    this.name = name;
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
                    currentRoute.route.setOptions(inactivePath);
                }
                currentRoute = getRouteByMarker(selectedRouteMarker);
                currentMode = MODE.ROUTE;
                currentRoute.route.setOptions(activePath);
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

    // set start marker at current position
    var marker = new google.maps.Marker({
        position: position,
        map: map,
        icon: routeMarkerImage,
        draggable: true
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

    google.maps.event.addListener(marker, 'click', function (event) {
        selectedRouteMarker = getRouteMarker(event.latLng);
        if (getRouteByMarker(selectedRouteMarker) == currentRoute) {
            $('#routeContextMenu_active').contextMenu({ x: event.Ka.pageX, y: event.Ka.pageY });
        } else {
            $('#routeContextMenu_inactive').contextMenu({ x: event.Ka.pageX, y: event.Ka.pageY });
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
        selectedRouteMarker = getRouteMarker(event.latLng);

        var path = currentRoute.route.getPath();
        path.removeAt(draggedMarkerIndex);
        path.insertAt(draggedMarkerIndex, selectedRouteMarker.position);

        updateRouteDistance();
    });
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
}

function updateRouteDistance() {

    currentRoute.length = 0;
    var currentMarker = null;
    var nextMarker = null;

    for (var i = 0; i < currentRoute.markerArray.length - 1; i++) {

        currentMarker = currentRoute.markerArray[i];
        nextMarker = currentRoute.markerArray[i + 1];
        currentRoute.length += getDistance(currentMarker.position, nextMarker.position);
    }

    document.getElementById("route_distance_number").innerHTML = currentRoute.length;
}

function startNewRoute(position) {

    currentMode = MODE.ROUTE;

    document.getElementById('routeMenuContainer').style.display = "block";

    // delete temp marker & infobox
    if (temporaryMarker != null) { temporaryMarker.setMap(null); }
    if (temporaryMarkerInfobox != null) { temporaryMarkerInfobox.setMap(null); }

    // initialize new route
    route = new google.maps.Polyline(activePath);

    currentRoute = new Route(route, 'Route' + (routeArray.length + 1), routeArray.length);

    routeArray.push(currentRoute);

    route.setMap(map);

    addRouteMarker(position);
}

function stopRouteMode() {
    currentMode = MODE.DEFAULT;
    currentRoute.route.setOptions(inactivePath);
    currentRoute = null;
    document.getElementById('routeMenuContainer').style.display = "none";
}

function deleteRoute() {
    if (currentRoute != null) {
        currentRoute.route.setMap(null);
    }

    for (var i = 0; i < currentRoute.markerArray.length; i++) {
        currentRoute.markerArray[i].setMap(null);

        if (i == (currentRoute.markerArray.length - 1)) {
            currentRoute.markerArray[i].infobox.setMap(null);
        }
    }
    routeArray.splice(routeArray.indexOf(currentRoute), 1);
}

function saveRoute() {
    alert('Save Route!')
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
            if (routeArray[i].markerArray[j].position == marker.position) {
                return routeArray[i];
            }
        }
    }
    return null;
}