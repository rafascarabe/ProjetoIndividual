create database universoLITERARIO;
use universoLITERARIO;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(45) NOT NULL UNIQUE,
telefone CHAR(9),
nickName VARCHAR(30) NOT NULL UNIQUE,
senha VARCHAR(30) NOT NULL
) AUTO_INCREMENT = 100;

CREATE TABLE newsletter(
idAssinante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(45) NOT NULL UNIQUE,
fkUSUARIO INT, -- não é obrigatorio preencher 
	CONSTRAINT newsletter FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario)
);

CREATE TABLE livro (
idLivro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(45),
autor VARCHAR(45),
genero VARCHAR(45),
resenha VARCHAR(1000),
avaliacao DECIMAL(2,1),
 CONSTRAINT CHECKavaliacao CHECK (avaliacao <= 5 and avaliacao >= 1)
 );

CREATE TABLE favoritados (
fkUSUARIO INT,
fkLIVRO INT,
PRIMARY KEY (fkUSUARIO, fkLIVRO),
	CONSTRAINT favoritados FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario),
    CONSTRAINT favoritado FOREIGN KEY (fkLIVRO) REFERENCES livro(idLivro)
);

CREATE TABLE comentario (
idComentario INT PRIMARY KEY AUTO_INCREMENT,
forum VARCHAR(45),
fkUSUARIO INT,
comentario VARCHAR(500),
dataHora DATETIME,
	CONSTRAINT comentario FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario)
);
