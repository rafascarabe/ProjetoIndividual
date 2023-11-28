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
resenha VARCHAR(2000),
avaliacao DECIMAL(2,1),
 CONSTRAINT CHECKavaliacao CHECK (avaliacao <= 5 and avaliacao >= 1)
 );

select*from livro;

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



INSERT INTO livro VALUES
(null, 'A culpa é das estrelas', 'John Green','romance',
	'A Culpa é das Estrelas é escrita da perspectiva de Hazel e sua narrativa é realmente espirituosa e engraçada. Eu amo que tanto Hazel quanto Augustus aceitam tanto a doença que é uma parte tão importante de suas vidas. 
	Nenhum deles tem pena de si mesmo, mas também não estão irrealisticamente bem com o que obviamente deve ser uma coisa altamente traumática de se passar. 
    Os personagens são francos, imperfeitos e ainda assim cheios de vida. Eu me senti esgotado e ainda energizado depois de ler este livro. Eles não perderam tempo e foram direto fazer o que queriam. Ambos estão determinados a viver suas vidas como adolescentes normais e é realmente triste vê-los lutando. 
    O que gostei a obra, é que não há muitos gestos românticos enormes ou qualquer coisa boba neste livro. Esta história revela as complexidades de cada personagem e compartilha suas personalidades além de suas doenças pelas quais as pessoas costumam defini-los. A coragem e o humor, a energia e o desespero mantêm você em uma montanha-russa de emoções. ', 4.9),
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