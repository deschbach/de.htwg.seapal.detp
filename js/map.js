

// wann soll der marker genau verschwinden? soll er nach klick auf ihn für immer da bleiben? timer neustarten bei drag-events?
// wozu lat/long anzeige? entfernen?
// boger nach ressourcen von fähnchen fragen
// openseamap fehler normal?

var map;
var marker;
var infobox;
var timeout;

function initialize() {
    var mapTypeIds = ["roadmap", "satellite", "OSM"];
    var mapOptions = {
        center: new google.maps.LatLng(47.66, 9.16),
        zoom: 14,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        mapTypeControlOptions: {
            mapTypeIds: mapTypeIds
        }
    };
    map = new google.maps.Map(document.getElementById("map_canvas"),
       mapOptions);

    map.mapTypes.set("OSM", new google.maps.ImageMapType({
        getTileUrl: function (coord, zoom) {
            return "http://tile.openstreetmap.org/" + zoom + "/" + coord.x + "/" + coord.y + ".png";
        },
        tileSize: new google.maps.Size(256, 256),
        name: "OpenStreetMap",
        maxZoom: 18
    }));

    //map.overlayMapTypes.push(new google.maps.ImageMapType({
    //    getTileUrl: function (coord, zoom) {
    //        return "http://tiles.openseamap.org/seamark/" + zoom + "/" + coord.x + "/" + coord.y + ".png";
    //    },
    //    tileSize: new google.maps.Size(256, 256),
    //    name: "OpenSeaMap",
    //    maxZoom: 18
    //}));

    document.getElementById("lat").firstChild.nodeValue = map.getCenter().lat();
    document.getElementById("long").firstChild.nodeValue = map.getCenter().lng();
    google.maps.event.addListener(map, 'center_changed', function () {
        document.getElementById("lat").firstChild.nodeValue = map.getCenter().lat();
        document.getElementById("long").firstChild.nodeValue = map.getCenter().lng();
    });

    google.maps.event.addListener(map, 'click', function (event) {
        var markerOptions = {
            position: event.latLng,
            map: map,
            draggable: true
        }
        if (marker != null) { marker.setMap(null); } // alten Marker entfernen
        if (infobox != null) { infobox.setMap(null); } // alte Infobox entfernen
        marker = new google.maps.Marker(markerOptions);

        google.maps.event.addListener(marker, 'click', function (event) {
            $('#context-menu').contextMenu({ x: event.b.x, y: event.b.y });
            stopTimeout();
        });

        google.maps.event.addListener(marker, 'drag', function (event) {
            infobox.setMap(null);
            drawinfobox(event.latLng);
        });
        google.maps.event.addListener(marker, 'dragend', function (event) {
            startTimeout();
        });
        startTimeout();
        drawinfobox(event.latLng);

    });

    var routePoints = [
      new google.maps.LatLng(47.66, 9.16),
      new google.maps.LatLng(47.67, 9.17),
      new google.maps.LatLng(47.69, 9.14),
    ];
    var route = new google.maps.Polyline({
        path: routePoints,
        strokeColor: "#FF0000",
        strokeOpacity: 1.0,
        strokeWeight: 2
    });

    route.setMap(map);

}

function startTimeout() {
    timeout = setTimeout(function () {
        marker.setMap(null);
        infobox.setMap(null);
    }, 5000);
}

function stopTimeout() {
    clearTimeout(timeout);
}

function drawinfobox(latLng) {

    customTxt = "<div><NOBR>" + formatCoordinate(latLng.Ya, "lat") + "</NOBR><br><NOBR>"
        + formatCoordinate(latLng.Za, "long") + "</NOBR></div>";
    infobox = new TxtOverlay(latLng, customTxt, "coordinate_info_box", map, -60, -90);

}

$(function () {
    $.contextMenu({
        selector: '#context-menu',
        callback: function (key, options) {
            if (key == "marker") {

            } else if (key == "startroute") {
    
            } else if (key == "distance") {

            } else if (key == "destination") {

            } else if (key == "delete") {
                marker.setMap(null);
                infobox.setMap(null);
            }
        },
        items: {
            "marker": { name: "Markierung setzen", icon: "marker" },
            "startroute": { name: "Route setzen", icon: "startroute" },
            "distance": { name: "Abstand von hier", icon: "distance" },
            "destination": { name: "Zum Ziel machen", icon: "destination" },
            "delete": { name: "Löschen", icon: "delete" },
        }
    });
});
