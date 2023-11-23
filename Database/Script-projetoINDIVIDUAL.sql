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
(null, 'A hipótese do amor', 'Ali Hazelwood','romance',
	'A história acompanha Olive. Ela é aluna do doutorado de biologia de Stanford e está em uma situação complicada em relação a sentimentos. Olive saiu algumas vezes com Jeremy. Mas percebeu que é sua melhor amiga, Anh, quem gosta dele. Para juntá-los, no entanto, ela precisa convencer Anh de que "superou" Jeremy. Ou seja, ela precisa ser convincente. 
    E escolhe tascar um beijão no professor mais odiado da universidade, Adam Carlsen, na frente da amiga. A situação se desenrola em um acordo de interesses entre Olive e Adam, que envolve um namoro de mentira. 
    A Hipótese do Amor é, sem sombra de dúvidas, digna de todo o hype. E eu digo isso como uma pessoa relutante em ler essa história, uma vez que foi inspirada em uma fanfic Reylo (meu coração anti-Reylo se recusava a sequer olhar para esse livro). 
    Qual foi minha surpresa, ao ler, perceber que não tem nada a ver com o casal das fanfics. Porque Adam e Olive são amorezinhos um com o outro a partir do momento em que o destino (ou o cupido) os empurra na mesma direção. 
    Olive é hilária. Eu ri alto com ela diversas vezes, porque o humor dela mistura o fato de ser debochada com a auto estima inexistente e as dúvidas hiperbólicas constantes. Olive é genuinamente engraçada; aquele tipo de protagonista que te anima a continuar acompanhando a história. ', 4.9),
(null, 'Até o verão terminar', 'Colleen Hoove','romance',
	'Beyah nunca teve uma vida fácil. Filha de uma mãe viciada em drogas e um pai ausente, ela precisou se virar como dava desde pequena, e é com o próprio esforço que consegue ter uma boa perspectiva para os anos a frente quando consegue uma bolsa de estudos integral com seu talento para ingressar na faculdade. No entanto, em um único dia, sua vida vira de cabeça para baixo ao perder o pouco que tem e tendo que recorrer a única pessoa que restou. É assim que Beyah vai parar numa praia paradisíaca com a nova família do pai que nunca ouviu falar, onde conhece o vizinho misterioso, rico, bonito chamado Samson. 
    Beyah e Samson possuem segredos e cicatrizes que estão dispostos a esconder às sete chaves, porém, à medida que são reveladas conseguimos entender os motivos para eles serem como são. 
    Beyah é uma personagem de dar um aperto no coração com tudo que passou em tão tenra idade. No entanto, quando nossa personagem chega no seu novo destino, encontra em Sara, a enteada de seu pai, uma verdadeira amiga em quem confiar. E não só isso, mas também um lar amoroso e digno. 
    Já com Samson, temos o mocinho misterioso e um tanto desinteressado que desperta a nossa astúcia para desvendarmos seu passado. Mas uma coisa que não podemos negar é que a autora fez de novo: um personagem masculino impecável. Nele encontrei uma boa dose de maturidade, interesse genuíno e um ser humano que dá de si a outros. E bem diferente da Beyah, que é cínica e descrente sobre as boas intenções das pessoas, Samson de nenhuma forma é amargurado ou maldoso. ', 4.7),
(null, 'Lady Killers: Assassinas em Série', 'Tori Telfer','terror',
	'Lady Killers é um terror de crimes reais que recapitula a história de 14 mulheres que deixaram suas marcas na história como psicopatas e assassinas em série. Tori Telfer traz um presente para os fãs de histórias reais e macabras ao brincar com a narração de assassinatos hediondos ao mesmo tempo em que aborda a figura da mulher assassina e como ela é retratada pela sociedade desde o contexto em que vivia até a recente popularização dos serial killers como “cultura pop”. 
	Sem romantizá-las ou homenageá-las de forma positiva, Tori Telfer traz luz sobre o tema, mostrando que as mulheres também são capazes de cometer os crimes mais hediondos e mostrando como algumas assassinas merecem tanto espaço no imaginário popular quanto os homens. 
    Ao longo de todo o livro Tori coloca em xeque alguns dos motivos atribuídos a essas assassinas como uma forma de diminuí-las. É como se mesmo assassinas cruéis, psicopatas e sanguinárias fossem minimizadas a meras mulheres com corações partidos, sexualmente frustradas ou bruxas. Sem tentar colocá-las em pedestais ou justificar seus crimes hediondos, Tori  questiona a forma como essas mulheres foram retratadas ao longo da história e porque elas não recebem o mesmo tratamento que os homens, seja aos olhos da sociedade, seja na cultura pop. 
    É interessante observar o viés feminista de Tori ao abordar as diversas camadas da violência feminina e como isso reflete e reforça estereótipos de gênero. A complexidade dos assassinatos e das motivações de cada uma dessas mulheres foram, por diversas vezes, reduzidas a explicações superficiais e descartáveis e Tori Telfer traz um novo olhar sobre essas narrativas. ', 4.5),
(null, 'Meu Pé de Laranja Lima', 'José Mauro de Vasconcelos','ficção','O protagonista Zezé tem 6 anos e mora num bairro modesto, na zona norte do Rio de Janeiro. O pai está desempregado, e a família passa por dificuldades. O menino vive aprontando, sem jamais se conformar com as limitações que o mundo lhe impõe. A alegria e a tristeza não poderiam estar mais bem combinadas do que nestas páginas. A história é narrada em primeira pessoa pelo protagonista Zezé, um aspirante a poeta, mesmo sendo uma criança, ele utiliza palavras difíceis para sua idade, já demonstrando sua genialidade como poeta. O protagonista é construído com muito cuidado e carinho, ele é uma criança que precisou crescer cedo demais. 
	O texto de José Mauro de Vasconcelos, não é poético como o seu personagem almeja ser, o autor narra a sua história de uma maneira simples e direta, o que não é ruim ou errado aqui. 
	O autor também sabe envolver o leitor dentro a atmosfera do livro usando erros gramaticais para trazer pronúncias ou sotaque de certas palavras e personagens. O Meu Pé de Laranja Lima traz os excessos da agressividade, da injustiça, da crueldade e do desrespeito ao ser infantil. Ao longo da leitura o leitor pode observar um olhar cruel de como os problemas dos adultos podem acabar por negligenciar as crianças que se refugiam em seus universos particulares e criativos. 
	A obra também vai trazer a visão do outro lado da moeda, onde podemos notar o caráter transformador do afeto quando essa mesma criança negligenciada é abraçada por um adulto capaz de trazer acolhimento. Isso fortemente representado na relação de Zezé e Portuga. ', 4.7);

INSERT INTO livro VALUES
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9),
(null, 'A culpa é das estrelas', 'John Green','romance','', 4.9);