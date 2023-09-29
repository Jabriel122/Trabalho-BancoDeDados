CREATE DATABASE Veiculos;

USE Veiculos;

CREATE TABLE Fabricante (IdFabricante INT PRIMARY KEY , NomeFantasia VARCHAR(200) NOT NULL);

CREATE TABLE Veiculos (IdVeiculos INT PRIMARY KEY,  Placa VARCHAR(7) NOT NULL, Modelo VARCHAR(100) NOT NULL, IdFabricante INT NOT NULL ,FOREIGN KEY (IdFabricante) REFERENCES Fabricante (IdFabricante));

SELECT * FROM Fabricante;

SELECT * FROM Veiculos;

INSERT INTO Fabricante(IdFabricante,NomeFantasia)
VALUES (1,'Toyota'), (2,'Honda');

INSERT INTO Veiculos(IdVeiculos,Placa, Modelo, IdFabricante)
VALUES (1,'FGi-090', 'Sedan',2), (2,'FFF-909', 'SUV',1), (3,'SAS-132', 'CARRO ESPORTIVO',2);

SELECT Veiculos	
					Veiculos.Placa AS Veiculos
					Veiculos.Modelo AS Modelo
					Fabricante.NomeFantasia AS Fabricante
FROM 
					Veiculos LEFT JOIN Fabricante ON Veiculos.IdFabricante = Fabricante.IdFabricante
					 





