
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Banco de dados: `bd_games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `cod` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`cod`, `genero`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Terror'),
(4, 'Plataforma'),
(5, 'Estratégia'),
(6, 'RPG'),
(7, 'Esporte'),
(8, 'Corrida'),
(9, 'Tabuleiro'),
(10, 'Puzzle'),
(11, 'Luta'),
(12, 'Musical');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero` int(11) NOT NULL,
  `produtora` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `capa` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`cod`, `nome`, `genero`, `produtora`, `descricao`, `nota`, `capa`) VALUES
(1, 'Mario Odyssey', 2, 3, 'Em Super Mario Odyssey, o jogador joga como Mario em suas aventuras por terras além do Reino dos Cogumelos com o auxílio de um novo personagem introduzido no jogo, o Cappy. Esse \"chapéu vivo\" garante um novo acréscimo à dificuldade e a dinâmica já vista nos jogos anteriores, pois além de ser uma forma de ataque além do seu tradicional pulo, ele dá também a habilidade de \"capturar\" os carismáticos inimigos da série e alguns objetos. A nova mecânica funciona da seguinte maneira: ao chacoalhar os Joy-Cons ou apertar um simples botão, Cappy é arremessado e volta para a cabeça de Mario automaticamente, apenas se não encostar em algo que ele possa interagir.', '9.50', 'mario.png'),
(2, 'Call of Dutty: Black Ops', 1, 5, 'Black Ops é um jogo de tiro em primeira pessoa. O jogador assume o papel de um veterano de guerra que pode manejar diversas armas diferentes (sendo capaz de carregar consigo apenas duas de cada vez), lançar granadas de mão e utilizar vários tipos de equipamento. O jogador assume o papel de diversos personagens durante a campanha single-player, mudando de perspectiva com o avançar da história. Os personagens jogáveis são agentes de forças especiais conduzindo missões clandestinas por trás das linhas inimigas. Sendo assim, cada personagem tem suas próprias características, como vozes e sombras.[3] As missões trazem uma série de objetivos mostrados no heads-up display, que marca a direção e distância a ser alcançada para cumprir cada objetivo. O jogador é acompanhado por tropas aliadas durante todo seu percurso. Embora primeiramente um jogo de tiro em primeira pessoa, o jogador pode também pilotar um helicóptero Mil Mi-24 e guiar tropas a partir de uma aeronave de reconhecimento SR-71 Blackbird.', '3.50', 'cod.png'),
(3, 'League of Legends', 1, 2, 'League of Legends (abreviado como LoL e comumente referido como League) é um jogo eletrônico multiplayer online battle arena (MOBA) desenvolvido e publicado pela Riot Games. Foi lançado em outubro de 2009 para Microsoft Windows e em março de 2013 para macOS. Inspirado em Defense of the Ancients (DotA), uma modificação de Warcraft III, os fundadores da Riot buscaram desenvolver um jogo autônomo do mesmo gênero. Desde o seu lançamento, o título é gratuito para jogar e monetizado por meio de personalização de personagens, na qual é obtenível através de uma moeda virtual comprável com dinheiro real. ', '8.50', 'lol.png'),
(4, 'Donkey Kong Tropical Freeze', 2, 3, 'Detone os barris numa aventura de Donkey Kong aclamada pela crítica enquanto a adorada série faz sua estreia no Nintendo Switch™ com uma penca de novidades. Atravesse ilhas repletas de plataformas perfeitas e ação incessante, como os Kongs clássicos no jogo original, ou bagunce um pouco as coisas ao jogar como Funky Kong no novo modo Funky! Invasores árticos transformaram a ilha Donkey Kong em uma fortaleza congelada, e cabe a você salvar o dia. Jogue como Donkey Kong no modo original e junte-se a Diddy Kong, Dixie Kong e Cranky Kong – cada um com habilidades únicas – para superar os desafios das plataformas e vilões gelados. Para uma experiência mais fácil, comece pelo modo Funky e aproveite várias novidades na jogabilidade e um novo personagem, o incrível símio surfista Funky Kong! Corações extra e habilidades únicas deixam o jogo muito mais tranquilo. Não importa o modo escolhido, uma fartura de colecionáveis e o modo cooperativo para dois jogadores completam a diversão!', '8.00', 'donkey.png'),
(5, 'Sonic the Hedgehog', 2, 7, 'Sonic the Hedgehog[a] é uma série de jogos e uma franquia multimídia japonesa criada pelo Sonic Team e produzida pela Sega. A franquia segue Sonic, cuja vida pacífica é sempre interrompida pelo antagonista principal da série, Dr. Eggman (nome real : Dr. Ivo Robotnik). Sonic - normalmente junto de um de seus aliados, como Tails e Knuckles - se aventuram para parar o vilão insano e seus planos para dominação mundial. O primeiro jogo da série Sonic, lançado em 1991, foi concebido pela divisão da Sega, Sonic Team após um pedido para um novo mascote. O título foi um sucesso, e foi renovado para várias sequelas, que levaram a Sega a liderança no rumo dos consoles de video-game da era 16-bit do começo até a metade dos anos 90.', '8.50', 'sonic.png'),
(6, 'God of War', 1, 4, 'God of War é uma série de jogos eletrônicos de ação-aventura criada por David Jaffe da Santa Monica Studio, da Sony. Iniciada em 2005 no console PlayStation 2 (PS2), tornou-se carro-chefe para a marca PlayStation, consistindo em oito jogos em várias plataformas, com um nono atualmente em desenvolvimento. Baseada em distintas mitologias, a história segue Kratos, um guerreiro espartano que foi levado a matar sua família por seu antigo mestre, o deus da guerra Ares. Isso desencadeia uma série de eventos que levam à guerras com os panteões mitológicos. A era da mitologia grega da série mostra Kratos seguindo um caminho de vingança devido às maquinações dos deuses do Olimpo, enquanto a era da mitologia nórdica, que apresenta seu filho Atreus como protagonista secundário, mostra um Kratos mais velho em um caminho de redenção, o que inadvertidamente coloca os dois em conflito com os deuses nórdicos.', '9.50', 'gow.png'),
(7, 'Counter-Strike', 1, 11, 'Counter-Strike (também abreviado por CS) é um popular jogo eletrônico de tiro em primeira pessoa.[2] Inicialmente criado como um \"mod\" de Half-Life para jogos online, foi desenvolvido por Minh Le e Jess Cliffe e depois adquirido pela Valve Corporation. Foi lançado em 1999, porém em 2000 ele começou a ser comercializado oficialmente. O jogo é baseado em rodadas nas quais equipes de contraterroristas e terroristas combatem-se até a eliminação completa de um dos times, e tem como objetivo principal plantar e desarmar bombas, ou sequestrar e salvar reféns.', '9.00', 'cs.png'),
(8, 'Resident Evil 6', 3, 14, 'Resident Evil 6 é novo capítulo da renomada franquia de horror e ação, marcando o retorno dos veteranos Chris Redfield e Leon Kennedy lutando juntos contra o enxame de zumbis. O jogo se passa no ano de 2013 na cidade fictícia de Lanshiang, na região costeira da China, onde um novo tipo de vírus ameaça contagiar a população de todo o país. Quanto ao gameplay, Resident Evil 6 deve manter a mecânica utilizada nos RE4 e 5, sendo que a possibilidade de correr e até esquivar-se enquanto você atira deixam o jogo um pouco mais inclinado à ação rápida. Desta vez, os mortos-vivos são ligeiramente mais inteligentes, podem usar armas de fogo e são ágeis o suficiente para correr e saltar sobre o personagem.', '7.50', 'resident.png'),
(9, 'Grand Theft Auto V', 2, 13, ' Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. A jogabilidade é mostrada em uma perspectiva de primeira ou terceira pessoa e o mundo pode ser atravessado a pé ou com veículos. Os jogadores controlam três protagonistas e podem alternar entre eles durante e fora das missões. A história é centrada em sequências de assaltos, com muitas missões envolvendo a jogabilidade de tiro e direção. Um sistema de \"procurado\" define a resposta e agressividade das forças da lei contra os crimes cometidos pelo jogador. O modo multijogador, Grand Theft Auto Online, permite que até trinta jogadores explorem o mundo e entrem em partidas competitivas ou cooperativas.', '9.50', 'gta.png'),
(10, 'Metal Gear Solid V', 6, 9, 'Metal Gear Solid 5: The Phantom Pain é a cereja do bolo da famosa série de games de “espionagem”. A despedida do aclamado produtor Hideo Kojima da Konami não poderia ser em melhor estilo: o novo Metal Gear tem toques de uma obra-prima. Daquelas que, sem dúvida, podem entrar para a história dos jogos eletrônicos. É um grand finale, para aplaudir de pé. Metal Gear Solid V: The Phantom Pain começa com Snake, protagonista da série, sendo acordado em um hospital de administração britânica após passar nove anos em coma. A trama se desenrola a partir dali, e mostra o personagem e seu parceiro Kazuhira Miller (Kaz) em busca de vingança contra a organização Cipher.', '8.50', 'metal.png'),
(11, 'Assassins Creed III', 1, 10, 'Assassins Creed III é um jogo de ação-aventura produzido pela Ubisoft e publicado pela Ubisoft durante os meses de Outubro e Novembro de 2012. O enredo decorre de uma história fictícia dentro de eventos reais e segue a batalha ancestral entre os Assassinos, que lutam pela liberdade, e os Templários, que desejam controlar a humanidade. A trama se desenrola no século XXI onde Desmond Miles, o protagonista da série, com a ajuda de uma máquina conhecida como Animus, revive as memórias dos seus ancestrais para o ajudar a descobrir uma maneira de prevenir o Apocalipse de 2012. A história principal se desenrola antes, durante e depois da Revolução Americana entre 1765 e 1783 e segue o ancestral de Desmond, de ascendência mohawk e inglesa, enquanto ele luta contra as tentativas dos Templários de controlar a nova nação.', '7.50', 'assassin.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtoras`
--

CREATE TABLE `produtoras` (
  `cod` int(11) NOT NULL,
  `produtora` varchar(20) NOT NULL,
  `pais` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtoras`
--

INSERT INTO `produtoras` (`cod`, `produtora`, `pais`) VALUES
(1, 'Microsoft', 'EUA'),
(2, 'Tencent', 'China'),
(3, 'Nintendo', 'Japão'),
(4, 'Sony', 'Japão'),
(5, 'Activision', 'EUA'),
(6, 'EA', 'EUA'),
(7, 'Sega', 'Japão'),
(8, 'Namco Bandai', 'Japão'),
(9, 'Konami', 'Japão'),
(10, 'Ubisoft', 'EUA'),
(11, 'Valve', 'EUA'),
(12, 'Square Enix', 'Japão'),
(13, 'Take Two', 'EUA'),
(14, 'Capcom', 'Japão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(80) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'editor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `nome`, `senha`, `tipo`) VALUES
('admin', 'admin', '$2y$10$zZbZPfEwxCvSoCxWLc3yy.d8oOoKzML5NBnXxkbukMp4M6x29bvfO', 'admin'),
('teste', 'teste', '$2y$10$l3ZaFETtIuhR.A34ewU4hO1P4fTvXnkS0UNHBXG39/l/DgGV6iP5i', 'editor');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `genero` (`genero`),
  ADD KEY `produtora` (`produtora`);

--
-- Índices para tabela `produtoras`
--
ALTER TABLE `produtoras`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`cod`),
  ADD CONSTRAINT `jogos_ibfk_2` FOREIGN KEY (`produtora`) REFERENCES `produtoras` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
