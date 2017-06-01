
CREATE TABLE arzt (
    arzt_id INTEGER PRIMARY KEY,
    name VARCHAR(80)
);

CREATE TABLE medikament (
    medikament_id INTEGER PRIMARY KEY,
    preis FLOAT,
    name VARCHAR(80)
);

CREATE TABLE patient (
    patient_id INTEGER PRIMARY KEY,
    alter INTEGER,
    name VARCHAR(80)
);

CREATE TABLE behandlung (
    behandlung_id INTEGER PRIMARY KEY,
    arzt INTEGER REFERENCES arzt(arzt_id),
    patient INTEGER REFERENCES patient(patient_id),
    medikament INTEGER REFERENCES medikament(medikament_id)
);

INSERT INTO arzt (arzt_id, name) VALUES (1, 'Dr. Doom');
INSERT INTO arzt (arzt_id, name) VALUES (2, 'Dr. Octagon');
INSERT INTO arzt (arzt_id, name) VALUES (3, 'Dr. Luthor');
INSERT INTO arzt (arzt_id, name) VALUES (4, 'Dr. Mayer');

INSERT INTO medikament(medikament_id, preis, name) VALUES (1, 10, 'Palladium');
INSERT INTO medikament(medikament_id, preis, name) VALUES (2, 20.5, 'Cryptonit');

INSERT INTO patient(patient_id, alter, name) VALUES (1,	42,'Tony Stark');
INSERT INTO patient(patient_id, alter, name) VALUES (2,	115,'Steve Rogers');
INSERT INTO patient(patient_id, alter, name) VALUES (3,	28,'Natasha Romanoff');
INSERT INTO patient(patient_id, alter, name) VALUES (4,	118,'Bucky Barnes');
INSERT INTO patient(patient_id, alter, name) VALUES (5,	16,'Peter Parker');


INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (1,1,1,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (2,1,2,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (3,1,3,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (4,2,4,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (5,2,5,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (6,2,1,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (7,3,2,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (8,3,3,1);
INSERT INTO behandlung (behandlung_id, arzt, patient, medikament) VALUES (9,3,2,2);


