CREATE DATABASE Kursdatabas;

CREATE TABLE Kurser
(
  KursID		INT IDENTITY(1,1) PRIMARY KEY,
  KursNamn  VARCHAR(120)
)

CREATE TABLE Elever
(
  ElevID  INT IDENTITY(1,1) PRIMARY KEY,
  KursID  INT,
  ElevNamn  VARCHAR(120)
)
INSERT INTO Kurser
(KursNamn) VALUES
('Webbutveckling'),
('CAD'),
('IOT'),
('SERVER');

SELECT * FROM Kurser;

INSERT INTO Elever
(ElevNamn, KursID)
VALUES
('Adam', 1),
('Bertil', 1),
('Caesar', 4),
('David', 3),
('Erik', 2),
('Filip', 4),
('Gustav', 1),
('Helge', 1),
('Ivar', 2),
('Johan', 3),
('Kalle', 3),
('Ludwig', 1);

-- Visa elever och kurser
SELECT * FROM Elever
LEFT OUTER JOIN Kurser
ON Elever.KursID = Kurser.KursID;

-- Visar hur många elever som går respektive kurs.
SELECT count(*) as 'AntalElever' FROM Elever
LEFT OUTER JOIN Kurser
ON Elever.KursID = Kurser.KursID
GROUP BY kurser.kursID
