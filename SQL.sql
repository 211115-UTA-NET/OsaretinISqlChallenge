CREATE TABLE Pokemon
(
    ID  INT IDENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(100),
    Height VARCHAR(100),
    Weight VARCHAR(100) 

);


CREATE TABLE PokemonType
(
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    PokemonID INT FOREIGN KEY REFERENCES Pokemon(ID),
    TypeID INT FOREIGN KEY REFERENCES Type(ID)


);

CREATE TABLE Type
(
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
 

);


GO
INSERT INTO Pokemon
	( Name, Heigh, Weigh)
VALUES
	('Bulbasaur', '7', '70');

    GO
INSERT INTO Pokemon
	( Name, Heigh, Weigh)
VALUES
	('Ditto', '3', '40');

GO
INSERT INTO Type
	(  Name)
VALUES
	('Normal');

GO
INSERT INTO Type
	(  Name)
VALUES
	('Grass');


/*
6

*/

select name
from Pokemon
join PokemonType
ON Pokemon.ID = PokemonType.PokemonID
Type.ID = PokemonType.TypeID
where Bulbasaur = grass


/*
7

*/

select *
from Pokemon
 FULL OUTER JOIN  PokemonType
ON Pokemon.ID = PokemonType.PokemonID
FULL OUTER JOIN  Type
ON Type.ID = PokemonType.TypeID

