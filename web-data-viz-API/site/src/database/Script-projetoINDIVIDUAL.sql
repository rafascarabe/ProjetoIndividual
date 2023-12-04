create database universoLITERARIO;
use universoLITERARIO;


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

-- --------------------------------------------------------------------------- USUARIO
CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(45) NOT NULL UNIQUE,
telefone CHAR(9),
nomeUsuario VARCHAR(30) NOT NULL UNIQUE,
senha VARCHAR(30) NOT NULL,
fkLIVRO INT,  
	CONSTRAINT livro FOREIGN KEY (fkLIVRO) REFERENCES livro(idLivro)
) AUTO_INCREMENT = 100;

SELECT*FROM usuario;

-- ----------------------------------------------------------------------- NEWSLETTER
CREATE TABLE newsletter(
idAssinante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(45) NOT NULL UNIQUE,
fkUSUARIO INT, -- não é obrigatório preencher 
	CONSTRAINT newsletter FOREIGN KEY (fkUSUARIO) REFERENCES usuario(id)
);

SELECT*FROM newsletter;

-- -------------------------------------------------------------------------- QUIZ
CREATE TABLE quiz (
idQuiz INT PRIMARY KEY AUTO_INCREMENT,
fkUSUARIO INT,
pontuacao VARCHAR(45),
	CONSTRAINT quiz FOREIGN KEY (fkUSUARIO) REFERENCES usuario(id)
);

SELECT*FROM quiz;





