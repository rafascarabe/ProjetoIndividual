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
(null, 'A Biblioteca da Meia-Noite', ' Matt Haig',' ficção',
	'Em A Biblioteca da Meia-Noite somos apresentados a Nora Seed, que aos 35 anos está completamente arrependida das escolhas que fez para a sua vida. Ela vive se perguntando que vida poderia ter tido se tivesse feito escolhas diferentes. Em meio a uma sucessão de acontecimentos ruins, Nora se vê completamente sem propósito e decide que não quer mais viver e, então, no exato momento em que toma essa decisão definitiva ela vai parar na Biblioteca da Meia-Noite, um lugar onde o tempo não passa e onde ela terá a possibilidade de viver outras vidas. 
	Na biblioteca, Nora encontra diversos livros, cada um deles contendo uma vida (dela mesma) diferente. Em um, ela é uma nadadora bem-sucedida... em outro, uma rockstar. O mais bacana é: ela pode entrar em cada uma dessas vidas para experimentá-la. Se decidir por ficar, tudo bem. 
	A bibliotecária explica que assim que ela estivesse confortável na vida que escolhesse, acabaria por esquecer a vida anterior e a própria experiência na Biblioteca da Meia-noite. 
	É aí que a mágica acontece: ao transitar por algumas vidas, Nora acaba por entender que em todos os momentos, decepções acontecem. Que a vida pode ter aspectos bons e ruins em uma mesma proporção. E cabe a cada um lidar com esses aspectos da melhor forma possível. ', 4.7),
(null, 'A rainha do nada', ' Holly Black','fantasia',
	'A trama se inicia um tempo depois da reviravolta chocante de O Rei Cruel. Jude está exilada no reino humano, traída pelo rei que acreditava amar e pela irmã em quem confiava plenamente. Ela não tem muito que fazer, uma vez que, para os humanos, Jude está morta e esquecida no tempo - portanto, faz o possível para manter sua conexão com o mundo das fadas, caçando recompensas e elementos perigosos a mando de criaturas mágicas. 
	Quando sua irmã, Taryn, surge em busca de sua ajuda, Jude recebe uma oferta irrecusável: pode retornar ao reino mágico. Mas seu retorno vai trazer consequências com as quais ela não estará tão preparada para lidar. 
	Eu só posso dizer que, na minha experiência, esse livro foi como os outros dois da sequência O Polvo do Ar: uma montanha-russa cheia de surtos e gritos e momentos "JESUS SEGURA MINHA MÃO!" com um final surpreendente por se afastar tanto do caos e da tensão do resto do livro. 
	Acho que a Holly me ganhou justamente por entregar o que eu tanto estava querendo e tanto relutei em acreditar que veria no fim dessa série. ', 3.7),
(null, 'A hipótese do amor', 'Ali Hazelwood','romance', 4.9),
(null, 'Até o verão terminar', 'Colleen Hoove','romance',
	'Beyah nunca teve uma vida fácil. Filha de uma mãe viciada em drogas e um pai ausente, ela precisou se virar como dava desde pequena, e é com o próprio esforço que consegue ter uma boa perspectiva para os anos a frente quando consegue uma bolsa de estudos integral com seu talento para ingressar na faculdade. No entanto, em um único dia, sua vida vira de cabeça para baixo ao perder o pouco que tem e tendo que recorrer a única pessoa que restou. É assim que Beyah vai parar numa praia paradisíaca com a nova família do pai que nunca ouviu falar, onde conhece o vizinho misterioso, rico, bonito chamado Samson. 
    Beyah e Samson possuem segredos e cicatrizes que estão dispostos a esconder às sete chaves, porém, à medida que são reveladas conseguimos entender os motivos para eles serem como são. 
    Beyah é uma personagem de dar um aperto no coração com tudo que passou em tão tenra idade. No entanto, quando nossa personagem chega no seu novo destino, encontra em Sara, a enteada de seu pai, uma verdadeira amiga em quem confiar. E não só isso, mas também um lar amoroso e digno. 
    Já com Samson, temos o mocinho misterioso e um tanto desinteressado que desperta a nossa astúcia para desvendarmos seu passado. Mas uma coisa que não podemos negar é que a autora fez de novo: um personagem masculino impecável. Nele encontrei uma boa dose de maturidade, interesse genuíno e um ser humano que dá de si a outros. E bem diferente da Beyah, que é cínica e descrente sobre as boas intenções das pessoas, Samson de nenhuma forma é amargurado ou maldoso. ', 4.7),
(null, 'Lady Killers: Assassinas em Série', 'Tori Telfer','terror', 4.5),
(null, 'Meu Pé de Laranja Lima', 'José Mauro de Vasconcelos','ficção', 4.7),
(null, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry','ficção', 4.7),
(null, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid','romance', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9);