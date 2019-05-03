USE HogwartsSchoolSGBD
GO

INSERT INTO Profesori(Pid, Nume, Prenume) VALUES 
	(1, 'McGonagall', 'Minerva'), 
	(2, 'Flitwick', 'Filius'),
	(3, 'Trelawney', 'Sybill'),
	(4, 'Sprout', 'Pomona'),
	(5, 'Snape', 'Severus'), 
	(6, 'Hagrid', 'Rubeus')
SELECT * FROM Profesori

INSERT INTO Casa(Cid, Denumire, Animal) VALUES
	(1, 'Cercetasi', 'Leu'),
	(2, 'Ochi-de-soim', 'Soim'),
	(3, 'Astropufi', 'Bursuc'),
	(4, 'Viperini', 'Sarpe')
SELECT * FROM Casa

INSERT INTO Materii(Mid, Denumire, Pid) VALUES
	(1, 'Transfigurari', 1),
	(2, 'Aparare contra magiei negre', 5),
	(3, 'Potiuni', 5),
	(4, 'Prezicerea viitorului', 3),
	(5, 'Ierbologie', 4),
	(6, 'Zbor', 4),
	(7, 'Grija fata de creaturile magice', 6)
SELECT * FROM Materii

INSERT INTO Locatii(Lid, Denumire) VALUES
	(1, 'Subsol (Cladire principala)'),
	(2, 'Sera'),
	(3, 'Padurea Interzisa'), 
	(4, 'Gradina interioara'),
	(5, 'Sali de clasa (Cladire principala)')
SELECT * FROM Locatii

INSERT INTO LocMat(Lid, Mid, NrMat) VALUES
	(1, 2, 2),
	(1, 3, 2),
	(2, 5, 1),
	(3, 5, 3),
	(3, 7, 3),
	(4, 6, 1),
	(5, 1, 10),
	(5, 3, 10),
	(5, 4, 10)
SELECT * FROM LocMat

INSERT INTO Studenti(STid, Nume, Prenume, Oras, Aid, Cid) VALUES
	(1, 'Potter', 'Harry', 'Pestera lui Godric', 1, 1),
	(2, 'Granger', 'Hermione', 'London', 1, 1),
	(3, 'Weasley', 'Ronald', 'Devon', 1, 1),
	(4, 'Parkinson', 'Pansy','London', 4, 2),
	(5, 'Diggory', 'Cedric', 'London', 3, 3),
	(6, 'Weasley', 'Percy', 'Devon', 4, 1),
	(7, 'Patil', 'Padma', 'London', 5, 2),
	(8, 'Weasley', 'Bill', 'Devon', 6, 1), 
	(9, 'Abbot', 'Hannah', 'London', 7, 3),
	(10, 'Malfoy', 'Draco', 'London', 1, 4)
SELECT * FROM Studenti

INSERT INTO StudProf(STid, Pid, NrMat) VALUES
	(1, 1, 1),
	(1, 2, 1),
	(2, 3, 1),
	(3, 4, 1),
	(4, 5, 1),
	(5, 6, 1),
	(6, 1, 1),
	(7, 2, 1),
	(8, 3, 1),
	(9, 4, 1),
	(10, 5, 1)
SELECT * FROM StudProf

INSERT INTO Palarii(PAid, Descriere, Pid) VALUES
	(1, 'Tuguiata neagra', 1),
	(2, 'Rotunda neagra', 2),
	(3, 'Tuguiata albastra', 1),
	(4, 'Tuguiata rosie', 3),
	(5, 'Rotunda neagra', 4),
	(6, 'Tuguiata verde', 5),
	(7, 'Fara varf galbena', 2),
	(8, 'Tuguiata roz', 3),
	(9, 'Tuguiata cu pene', 1),
	(10, 'Tuguiata galbena', 1),
	(11, 'Rotunda cu pene', 6),
	(12, 'Tuguiata rosie', 4)
	
DROP TABLE Versiune
INSERT INTO Versiune(NrV) VALUES (0)
SELECT * FROM Versiune