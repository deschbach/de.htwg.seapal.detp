/* insert users */
INSERT INTO benutzer (benutzername, passwort, vorname, nachname, mail, geburtsdatum, registrierung) VALUES ("dominic", "pwd", "Dominic", "Eschbach", "doeschba@htwg-konstanz.de", DATE("2012-07-04"), DATE("2012-10-03"));
INSERT INTO benutzer (benutzername, passwort, vorname, nachname, mail, geburtsdatum, registrierung) VALUES ("timo", "pwd", "Timo", "Partl", "tipartl@htwg-konstanz.de", DATE("2012-07-02"), DATE("2012-10-03"));
INSERT INTO benutzer (benutzername, passwort, vorname, nachname, mail, geburtsdatum, registrierung) VALUES ("patrick", "pwd", "Patrick", "Rossnagel", "parossna@htwg-konstanz.de", DATE("2012-01-05"), DATE("2012-10-03"));


/* insert boats */
INSERT INTO bootinfo (bootname, registernummer, segelzeichen, heimathafen, yachtclub, eigner, versicherung, rufzeichen, typ, konstrukteur, laenge, breite, tiefgang, masthoehe, verdraengung, rigart, baujahr, motor, tankgroesse, wassertankgroesse, abwassertankgroesse, grosssegelgroesse, genuagroesse, spigroesse) VALUES ("Titanic", 101, "TI101", "New York", "New York Yacht Club", "George Boat", "Württembergische", "TI", "Schiff", "Peter Schiff", 200, 50, 7, 10, 1000, "T34", 1993, "Duotec 100", 500, 50, 30, 10, 25, 13);
INSERT INTO bootinfo (bootname, registernummer, segelzeichen, heimathafen, yachtclub, eigner, versicherung, rufzeichen, typ, konstrukteur, laenge, breite, tiefgang, masthoehe, verdraengung, rigart, baujahr, motor, tankgroesse, wassertankgroesse, abwassertankgroesse, grosssegelgroesse, genuagroesse, spigroesse) VALUES ("Queen Mary 2", 80, "QM80", "Dover", "Dover Yacht Club", "Hans Ebert", "Wüstenrot", "QM", "Schiff", "Rainer Berger", 200, 50, 7, 10, 1000, "T20", 1993, "Duotec 100", 500, 50, 30, 10, 25, 13);
INSERT INTO bootinfo (bootname, registernummer, segelzeichen, heimathafen, yachtclub, eigner, versicherung, rufzeichen, typ, konstrukteur, laenge, breite, tiefgang, masthoehe, verdraengung, rigart, baujahr, motor, tankgroesse, wassertankgroesse, abwassertankgroesse, grosssegelgroesse, genuagroesse, spigroesse) VALUES ("MS Deutschland", 150, "MSD150", "Hamburg", "Hamburg Yacht Club", "Peter Miller", "Allianz", "MSD", "Schiff", "Emil Klaus", 200, 50, 7, 10, 1000, "T27", 1993, "Duotec 100", 500, 50, 30, 10, 25, 13);


/* insert routes */
INSERT INTO tripinfo (bnr, titel, von, nach, skipper, crew, tstart, tende, tdauer, motor, tank) VALUES(1, "Bodensee-Rundfahrt", "Konstanz", "Meersburg", "Peter Mueller", "Peter, Michel, Ulf", NOW(), NOW(), 360, 10, 20);
INSERT INTO tripinfo (bnr, titel, von, nach, skipper, crew, tstart, tende, tdauer, motor, tank) VALUES(2, "Bodensee-Rundfahrt", "Konstanz", "Meersburg", "Peter Mueller", "Peter, Michel, Ulf", NOW(), NOW(), 360, 10, 20);
INSERT INTO tripinfo (bnr, titel, von, nach, skipper, crew, tstart, tende, tdauer, motor, tank) VALUES(3, "Bodensee-Rundfahrt", "Konstanz", "Meersburg", "Peter Mueller", "Peter, Michel, Ulf", NOW(), NOW(), 360, 10, 20);


/* inserts waypoints */
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 1", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 2", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 3", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 4", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 5", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 6", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 7", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 8", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 9", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (1, "Marker 10", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 1", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 2", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 3", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 4", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 5", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 6", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 7", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 8", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 9", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (2, "Marker 10", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 1", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 2", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 3", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 4", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 5", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 6", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 7", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 8", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 9", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");
INSERT INTO wegpunkte (tnr, name, lat, lng, btm, dtm, manoever, vorsegel) VALUES (3, "Marker 10", "latitude", "longitude", "btm", "dtm", "manoever", "vorsegel");