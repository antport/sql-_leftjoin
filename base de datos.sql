USE db2019;
CREATE TABLE personas(
  id_persona int AUTO_INCREMENT PRIMARY KEY,
  persona varchar(31),
  UNIQUE (persona)
  );

CREATE TABLE lugares(
  id_lugar int AUTO_INCREMENT PRIMARY KEY,
  lugar varchar (31),
  UNIQUE(lugar)
 );

CREATE TABLE viajaran(
  id_persona int,
  id_lugar int,
  fecha date,
  PRIMARY KEY (id_persona,id_lugar),
  FOREIGN KEY (id_persona) REFERENCES personas(id_persona),
  FOREIGN KEY (id_lugar) REFERENCES lugares(id_lugar)
);

ALTER TABLE viajaran ADD UNIQUE(id_persona,id_lugar);