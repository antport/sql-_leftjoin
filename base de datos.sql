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