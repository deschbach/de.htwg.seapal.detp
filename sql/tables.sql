/* table for users */
CREATE TABLE benutzer (
	bnr INT NOT NULL,
	benuztername VARCHAR(20) NOT NULL,
	passwort VARCHAR(10) NOT NULL,
	vorname VARCHAR(20) NOT NULL,
	nachname VARCHAR(20) NOT NULL,
	mail VARCHAR(30) NOT NULL,
	geburtsdatum DATE NOT NULL,
	registrierung DATE NOT NULL
)

INSERT INTO benutzer VALUES(1, "dominic", "pwd", "Dominic", "Eschbach", "doeschba@htwg-konstanz.de", DATE("2012-07-04"), DATE("2012-10-03"));

/* table for bootinformations */
CREATE TABLE bootinfo (
	bootname VARCHAR(30) NOT NULL,
	registernummer INT NOT NULL,
	segelzeichen VARCHAR(5) NOT NULL,
	heimathafen VARCHAR(30) DEFAULT NULL,
	yachtclup VARCHAR(30) DEFAULT NULL,
	eigner VARCHAR(30) NOT NULL,
	versicherung VARCHAR(30) NOT NULL,
	rufzeichen VARCHAR(5) DEFAULT NULL,
	typ VARCHAR(10) NOT NULL,
	kontrukteur VARCHAR(30) DEFAULT NULL,
	laenge FLOAT NOT NULL,
	breite FLOAT NOT NULL,
	tiefgang FLOAT NOT NULL,
	masthoehe FLOAT NOT NULL,
	verdraengung FLOAT NOT NULL,
	rigart VARCHAR(10) DEFAULT NULL,
	baujahr INT NOT NULL,
	motor VARCHAR(30) DEFAULT NULL,
	tankgroesse FLOAT DEFAULT NULL,
	wassertankgroesse FLOAT DEFAULT NULL,
	abwassertankgroesse FLOAT DEFAULT NULL,
	grosssegelgroesse FLOAT DEFAULT NULL,
	genuaugroesse FLOAT DEFAULT NULL,
	spigroesse FLOAT DEFAULT NULL
)