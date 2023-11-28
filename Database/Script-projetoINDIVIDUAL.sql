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

SELECT*FROM usuario;

-- ----------------------------------------------------------------------- NEWSLETTER
CREATE TABLE newsletter(
idAssinante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(45) NOT NULL UNIQUE,
fkUSUARIO INT, -- não é obrigatório preencher 
	CONSTRAINT newsletter FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario)
);

SELECT*FROM newsletter;
-- --------------------------------------------------------------------------- LIVRO
CREATE TABLE livro (
idLivro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(45),
autor VARCHAR(45),
genero VARCHAR(45),
avaliacao DECIMAL(2,1),
 CONSTRAINT CHECKavaliacao CHECK (avaliacao <= 5 and avaliacao >= 1)
 );

INSERT INTO livro VALUES
(null, 'A culpa é das estrelas', 'John Green','romance', 4.3),
(null, 'A Biblioteca da Meia-Noite', ' Matt Haig',' ficção', 4.7),
(null, 'A rainha do nada', ' Holly Black','fantasia', 3.7),
(null, 'A hipótese do amor', 'Ali Hazelwood','romance', 4.9),
(null, 'Até o verão terminar', 'Colleen Hoove','romance', 4.7),
(null, 'Lady Killers: Assassinas em Série', 'Tori Telfer','terror', 4.5),
(null, 'Meu Pé de Laranja Lima', 'José Mauro de Vasconcelos','ficção', 4.7),
(null, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry','ficção', 4.7),
(null, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid','romance', 4.9),
(null, 'O colecionador de desejos', 'Mia Sheridan','romance', 3.6),
(null, 'Garotos Mortos Não Contam Segredos', 'Mark Miller','terror', 4.3),
(null, 'As Vantagens de ser Invisível', 'Stephen Chbolsk','romance', 5.0);

SELECT*FROM livro;

-- -------------------------------------------------------------------------- FAVORITADOS
CREATE TABLE favoritados (
fkUSUARIO INT,
fkLIVRO INT,
PRIMARY KEY (fkUSUARIO, fkLIVRO),
	CONSTRAINT favoritados FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario),
    CONSTRAINT favoritado FOREIGN KEY (fkLIVRO) REFERENCES livro(idLivro)
);

SELECT*FROM favoritados;
-- -------------------------------------------------------------------------- COMENTÁRIO
CREATE TABLE comentario (
idComentario INT PRIMARY KEY AUTO_INCREMENT,
forum VARCHAR(45),
fkUSUARIO INT,
comentario VARCHAR(500),
dataHora DATETIME,
	CONSTRAINT comentario FOREIGN KEY (fkUSUARIO) REFERENCES usuario(idUsuario)
);

SELECT*FROM comentario;





