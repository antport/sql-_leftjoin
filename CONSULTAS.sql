USE db2019;
-- 01 lugares donde nadie va
SELECT lugar FROM lugares LEFT JOIN viajaran
  ON lugares.id_lugar=viajaran.id_lugar WHERE viajaran.id_lugar IS NULL;

-- 02 a que destinos va cada persona.
  SELECT persona, lugar FROM personas 
    JOIN viajaran ON personas.id_persona=viajaran.id_persona
    JOIN lugares ON viajaran.id_lugar=lugares.id_lugar;

-- 03 quien no viaja.
  SELECT persona FROM personas 
    leFT JOIN viajaran ON personas.id_persona=viajaran.id_persona 
  WHERE viajaran.id_persona IS NULL;

-- 04 sitio más visitado
-- c1
SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar;
-- c2
SELECT MAX(n) FROM (SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar)c1;

-- c3

SELECT id_lugar FROM (
  SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar
  ) c1 WHERE n = (
  SELECT MAX(n) FROM (SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar)c1
        );

-- resultado
SELECT lugar FROM (
SELECT id_lugar FROM (
  SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar
  ) c1 WHERE n = (
  SELECT MAX(n) FROM (SELECT id_lugar, COUNT(*) n FROM viajaran GROUP BY id_lugar)c1
        )
    )c3
JOIN lugares USING (id_lugar);

-- (06) Destinos al que han viajado todas las personas


-- (07) Personas que han viajado a todos los destinos que se visitarón.

SELECT persona FROM (
  SELECT id_persona, COUNT(*) n FROM viajaran GROUP BY 1
  HAVING COUNT(*)=(
                  SELECT COUNT(DISTINCT id_lugar) FROM viajaran
                  )
  )c3 JOIN personas USING(id_persona);