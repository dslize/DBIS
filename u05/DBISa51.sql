-- DBIS - Uebungsblatt 5 / Aufgabe 5.1

-- a)

SELECT name
FROM medikament
WHERE preis > 20

-- b)

SELECT name, arzt_id
FROM arzt A
WHERE NOT EXISTS
  (SELECT arzt
   FROM behandlung
   WHERE arzt = A.arzt_id)
   
-- c)

SELECT name, preis
FROM medikament
ORDER BY preis ASC

-- d)
-- View erstellen

CREATE VIEW Behandelte_Kunden AS
  SELECT name
  FROM patient P
  WHERE EXISTS
    (SELECT patient
     FROM behandlung
     WHERE patient = P.patient_id)

	 
-- View ausführen

SELECT *
FROM Behandelte_Kunden

-- e)

SELECT patient_id
FROM patient P
INNER JOIN behandlung ON P.patient_id = behandlung.patient
GROUP BY patient_id
HAVING COUNT(*) >= ALL
  (SELECT COUNT(patient_id)
   FROM patient P
   INNER JOIN behandlung ON P.patient_id = behandlung.patient
   GROUP BY patient_id)

-- f)

SELECT name
FROM medikament M
WHERE EXISTS
  (SELECT medikament
   FROM behandlung
   WHERE medikament = M.medikament_id
   GROUP BY medikament
   HAVING COUNT(*) > 3)
   
-- g)

SELECT name, COUNT(DISTINCT medikament) AS anzahlVerschiedenerMedikamente
FROM arzt A JOIN behandlung B
ON A.arzt_id = B.arzt
GROUP BY arzt
ORDER BY name ASC

