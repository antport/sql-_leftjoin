USE db2019;

INSERT INTO personas (persona) VALUES
  ('Isabel'),('Antonio'),('Jhonny'),('Roberto'),('María');

INSERT INTO lugares (lugar) VALUES
  ('China'),('Hawai'),('Bogotá'),('Madrid'),('New York');

INSERT INTO viajaran (id_persona,id_lugar) VALUES
  (1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO lugares (lugar) VALUES ('Noja');

INSERT INTO viajaran (id_lugar,id_persona)
  VALUES (2,4),(4,5),(5,3);