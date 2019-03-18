-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Mar-2019 às 12:24
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcenade`
--
CREATE DATABASE IF NOT EXISTS `bcenade` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bcenade`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE `adm` (
  `ID_ADM` int(11) NOT NULL,
  `MATRICULA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `ID_CURSO` int(11) NOT NULL,
  `NOME_CURSO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`ID_CURSO`, `NOME_CURSO`) VALUES
(1, 'ARQUITETURA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `ID_DISC` int(11) NOT NULL,
  `NOME_DISC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`ID_DISC`, `NOME_DISC`) VALUES
(1, 'CALCULO1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disci_lider`
--

CREATE TABLE `disci_lider` (
  `ID_DISCI_LIDER` int(11) NOT NULL,
  `ID_DISC` int(11) NOT NULL,
  `ID_LIDER` int(11) NOT NULL,
  `DATA_ADM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disci_lider`
--

INSERT INTO `disci_lider` (`ID_DISCI_LIDER`, `ID_DISC`, `ID_LIDER`, `DATA_ADM`) VALUES
(1, 1, 1, '22/04/2008');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lider`
--

CREATE TABLE `lider` (
  `ID_LIDER` int(11) NOT NULL,
  `MATRICULA` int(11) NOT NULL,
  `CPF_LIDER` varchar(14) NOT NULL,
  `DATA_NASC` varchar(10) NOT NULL,
  `TITULOS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lider`
--

INSERT INTO `lider` (`ID_LIDER`, `MATRICULA`, `CPF_LIDER`, `DATA_NASC`, `TITULOS`) VALUES
(1, 2, '624866737', '87/58/1998', 'POS DESENV. WEB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `ID_LOGIN` int(11) NOT NULL,
  `MATRICULA` int(11) NOT NULL,
  `SENHA` varchar(100) NOT NULL,
  `TIPO_USUARIO` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`ID_LOGIN`, `MATRICULA`, `SENHA`, `TIPO_USUARIO`) VALUES
(1, 1, '1234', 'ALUNO'),
(2, 2, '4321', 'LIDER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `ID_NOTA` int(11) NOT NULL,
  `ID_SIMULADO` int(11) NOT NULL,
  `ID_ALUNO` int(11) NOT NULL,
  `NOTAS` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `simulados`
--

CREATE TABLE `simulados` (
  `ID_SIMULADO` int(11) NOT NULL,
  `ID_ATIVIDADE` int(11) NOT NULL,
  `ID_ALUNO` int(11) NOT NULL,
  `NOTA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `MATRICULA` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `TELEFONE` varchar(30) NOT NULL,
  `EMAIL` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`MATRICULA`, `NOME`, `TELEFONE`, `EMAIL`) VALUES
(1, 'JHORDAN JESSE OLIVEIRA', '9284109787', 'JHORDANJES@GMAIL.COM'),
(2, 'MARIA DE ALGUMA COISA', '9298736525', 'TESTANDO@GMAIL.COM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`ID_ADM`),
  ADD KEY `IDE_MATRICULA` (`MATRICULA`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_CURSO`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`ID_DISC`);

--
-- Indexes for table `disci_lider`
--
ALTER TABLE `disci_lider`
  ADD PRIMARY KEY (`ID_DISCI_LIDER`),
  ADD KEY `ID_DISC` (`ID_DISC`),
  ADD KEY `LIDER_ID` (`ID_LIDER`);

--
-- Indexes for table `lider`
--
ALTER TABLE `lider`
  ADD PRIMARY KEY (`ID_LIDER`),
  ADD KEY `ID_MATRICULA` (`MATRICULA`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID_LOGIN`),
  ADD KEY `MATRICULA` (`MATRICULA`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`ID_NOTA`),
  ADD KEY `ID_SIMULADO` (`ID_SIMULADO`),
  ADD KEY `IDE_ALUNO` (`ID_ALUNO`);

--
-- Indexes for table `simulados`
--
ALTER TABLE `simulados`
  ADD PRIMARY KEY (`ID_SIMULADO`),
  ADD KEY `ID_ATIVIDADE` (`ID_ATIVIDADE`),
  ADD KEY `ID_ALUNO` (`ID_ALUNO`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm`
--
ALTER TABLE `adm`
  MODIFY `ID_ADM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_CURSO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `ID_DISC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disci_lider`
--
ALTER TABLE `disci_lider`
  MODIFY `ID_DISCI_LIDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lider`
--
ALTER TABLE `lider`
  MODIFY `ID_LIDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID_LOGIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simulados`
--
ALTER TABLE `simulados`
  MODIFY `ID_SIMULADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `MATRICULA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `adm`
--
ALTER TABLE `adm`
  ADD CONSTRAINT `IDE_MATRICULA` FOREIGN KEY (`MATRICULA`) REFERENCES `usuarios` (`MATRICULA`);

--
-- Limitadores para a tabela `disci_lider`
--
ALTER TABLE `disci_lider`
  ADD CONSTRAINT `ID_DISC` FOREIGN KEY (`ID_DISC`) REFERENCES `disciplinas` (`ID_DISC`),
  ADD CONSTRAINT `LIDER_ID` FOREIGN KEY (`ID_LIDER`) REFERENCES `lider` (`ID_LIDER`);

--
-- Limitadores para a tabela `lider`
--
ALTER TABLE `lider`
  ADD CONSTRAINT `ID_MATRICULA` FOREIGN KEY (`MATRICULA`) REFERENCES `usuarios` (`MATRICULA`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `MATRICULA` FOREIGN KEY (`MATRICULA`) REFERENCES `usuarios` (`MATRICULA`);

--
-- Limitadores para a tabela `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `IDE_ALUNO` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunos` (`ID_ALUNO`),
  ADD CONSTRAINT `ID_SIMULADO` FOREIGN KEY (`ID_SIMULADO`) REFERENCES `simulados` (`ID_SIMULADO`);

--
-- Limitadores para a tabela `simulados`
--
ALTER TABLE `simulados`
  ADD CONSTRAINT `ID_ALUNO` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunos` (`ID_ALUNO`),
  ADD CONSTRAINT `ID_ATIVIDADE` FOREIGN KEY (`ID_ATIVIDADE`) REFERENCES `atividade` (`ID_ATIVIDADE`);
--
-- Database: `comicsnews`
--
CREATE DATABASE IF NOT EXISTS `comicsnews` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `comicsnews`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(15) NOT NULL,
  `nome_aluno` varchar(220) NOT NULL,
  `rg` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `matricula`, `nome_aluno`, `rg`) VALUES
(1, '21546854875', 'Cesar', '6325482s'),
(2, '56124879634', 'Carlos', '2549358a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `departamentos_id` int(11) NOT NULL,
  `departamentos_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`departamentos_id`, `departamentos_nome`) VALUES
(1, 'INFORMÁTICA'),
(2, 'TELEFONIA'),
(3, 'ELETRODOMÉSTICOS'),
(4, 'GAMES');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `subtitulo`, `descricao`, `img`, `data`, `autor`) VALUES
(57, 'Bebê de um mês é resgatado após mãe ser denunciada por maus-tratos, em Manaus', 'Mulher estaria com o filho sob efeito de bebidas alcoólicas na Avenida Brasil, segundo informações d', 'Uma criança com pouco mais de um mês de vida foi resgatada nesta quarta-feira (1º), após a mãe ser denunciada por maus-tratos. Segundo a Polícia Militar, a mulher estava com bebê na Avenida Brasil, na Zona Oeste de Manaus, e tinha sintomas de embriaguez.\r\n\r\nO resgate ocorreu por volta de 9h, na via, que é uma das principais do bairro Compensa. De acordo com a 5ª Companhia Interativa Comunitária (Cicom), a denúncia informou que a criança estava sendo vítima de maus-tratos.\r\n\r\nA equipe foi até o local e avistou a mulher, possivelmente sob efeito de álcool, em posse da criança.\r\n\r\nPor conta disso, ela foi levada para a Delegacia Especializada em Proteção a Criança e ao Adolescente (DEPCA). No local, ela foi ouvida e assinou um Termo Circunstanciado de Ocorrência (TCO) por exposição ao perigo.\r\n\r\nO bebê foi levado para o Serviço de Acolhimento Institucional.', 'extras/img/noticia20.jpg', '2018-08-27 23:15:48', 'Noeme Caroline Santos'),
(58, 'Dobra emissão de carteiras de trabalho para estrangeiros no AM durante primeiro semestre de 2018', 'Aumento de documentos emitidos para estrangeiros foi motivado pelo fluxo migratório de venezuelanos.', 'O Amazonas registrou aumento de 17,5% na emissão de Carteiras de Trabalho e Previdência Social (CTPSs) no primeiro semestre deste ano, quando comparado com os primeiros seis meses de 2017. Foram emitidas mais 52 mil carteiras de trabalho até junho. A emissão para trabalhadores estrangeiros dobrou no Amazonas. Esse aumento foi impulsionado com a grande quantidade de imigrantes venezuelanos devido à crise em seu país de origem. Os dados foram divulgados pelo Ministério do Trabalho, nessa quarta-feira (1º).\r\n\r\nNo primeiro semestre de 2018, o Ministério do Trabalho e os Sines emitiram 52.061 carteiras no estado. Enquanto de janeiro a junho do ano passado foram emitidos 44.294 documentos para trabalhadores.\r\n\r\nApesar de não ser maioria das pessoas solicitantes de CTPSs no estado, 2.548 trabalhadores estrangeiros receberam a carteira de trabalho brasileira no Amazonas, somente no primeiro semestre deste ano. Já no mesmo período do ano passado, o grupo de estrangeiros que solicitou o documento foi 1.050. Houve aumento de 142,1% na quantidade de emissões de CTPSs para estrangeiros no Amazonas.', 'extras/img/noticia19.jpg', '2018-08-27 23:22:04', 'Noeme Caroline Santos'),
(59, 'Máquina escavadeira tomba e rompe tubulação de água na Zona Norte de Manaus', 'Trabalhadores realizavam serviço de drenagem profunda no momento do incidente.', 'Uma máquina escavadeira tombou quando trabalhadores realizavam um serviço de drenagem profunda no Conjunto Canaranas 1, bairro Cidade Nova, Zona Norte de Manaus. Com o incidente, ocorrido nesta quinta-feira (2), o peso do veículo causou o rompimento de uma tubulação pertencente à rede de distribuição de água e o abastecimento foi interrompido.', 'extras/img/noticia18.jpg', '2018-08-27 23:26:44', 'Noeme Caroline Santos'),
(60, 'Polícia captura suspeito de envolvimento em série de assassinatos em Manaus', 'Alexandre Alves da Silva, foi preso na cidade de Teresina (PI).', 'Alexandre Alves da Silva, conhecido como \"Cagão\", foi preso nesta quinta-feira (2) na cidade de Teresina (PI). Ele e outros cinco homens são investigados por suspeita de envolvimento em parte dos mais de 180 homicídios ocorridos entre junho e julho em Manaus. Silva estava foragido desde o dia 12 de maio, quando fugiu por meio de um túnel com outros 34 detentos do Centro de Detenção Provisória 2 (CDPM 2), situado no ramal do km 8 da BR- 174.', 'extras/img/noticia17.jpeg', '2018-08-27 23:29:37', 'Noeme Caroline Santos'),
(61, 'Pedreiro é suspeito de invadir casa onde já trabalhou e agredir idosa em assalto no AM', 'Mulher foi internada em estado grave. Homem teria feito cópia de chave durante serviço.', 'Um pedreiro, de 33 anos, foi preso suspeito de agredir e roubar uma mulher, de 61, no bairro Chapada, Zona Centro-Sul de Manaus. O crime aconteceu na madrugada de quinta-feira (2). Ele havia prestado serviço na casa da vítima e tinha tirado uma cópia da chave do local, escondido. A idosa teve fraturas no maxilar e foi internada em estado grave.', 'extras/img/noticia16.jpg', '2018-08-27 23:32:29', 'Noeme Caroline Santos'),
(62, 'TRE-AM recebe primeiro pedido de registro de candidatura ao governo para eleições 2018', 'PSTU solicitou registro de candidatura nesta quinta-feira (2).', 'Tribunal Regional Eleitoral (TRE-AM) recebeu, nessa quinta-feira (2), o primeiro pedido de registro de candidatura para as eleições 2018. O primeiro pedido foi feito pelo partido PSTU, que entregou mídia digital necessária para o requerimento, na sede do órgão em Manaus.\r\nA eleição de 2018 será a primeira em que o registro deve ser feito integralmente por meio digital, não havendo a entrega de qualquer documento em papel.', 'extras/img/noticia15.jpg', '2018-08-27 23:34:36', 'Jhordan Jesse Oliveira'),
(63, 'Crimes contra idosos aumentam em 2 anos e mais de 2,7 mil casos são registrados em Manaus no 1º semestre de 2018', 'Veja como denunciar crimes contra idosos em Manaus.', 'O número de crimes praticados contra idosos cresceu em Manaus nos últimos dois anos. Só em 2018, foram registrados 2.728 casos na capital pelo Sistema Integrado de Segurança Pública (Sisp). Furtos, roubos, ameaças e estelionatos lideram as ações criminosas contra os idosos na capital. Na maioria dos casos, os autores dos crimes são da própria família das vítimas. A vulnerabilidade dos idosos os tornam presas fáceis para os criminosos que cometem crimes financeiros.', 'extras/img/noticia14.jpg', '2018-08-27 23:36:59', 'Janival Vieira'),
(64, 'Operação prende suspeitos de triplo homicídio e foragidos do CDPM 2, em Manaus', 'Operação prende suspeitos de triplo homicídio e foragidos do CDPM 2, em Manaus', 'Nove pessoas foram presas durante a continuação da Operação Hórus, realizada neste sábado (4), em Manaus. Entre os presos estão dois suspeitos de participar de um triplo homicídio em um sítio na estrada de Balbina no mês de março, além de dois dos 35 detentos que fugiram do Centro de Detenção Provisória Masculino 2 (CDPM 2) por um túnel, em maio.\r\nDurante a operação, foram apreendidos com os suspeitos uma espingarda, quatro armas de fogo, uma granada e porções de entorpecentes. A polícia afirma que os presos são integrantes de uma facção criminosa que atua no Amazonas.', 'extras/img/noticia13.jpg', '2018-08-27 23:38:52', 'Noeme Caroline Santos'),
(65, 'Cinco mulheres são pegas com drogas em partes íntimas durante visitas em presídios no AM', 'Ocorrências foram registradas no Ipat e no CDPM, neste fim de semana.', 'Cinco mulheres foram flagradas com drogas durante procedimento de revista de visitantes no Instituto Penal Antônio Trindade (Ipat) e no Centro de Detenção Provisória de Manaus (CDPM), neste sábado (4). Elas seriam companheiras de detentos e tentaram esconder porções de entorpecentes nas partes íntimas.\r\nAs ocorrências foram registradas pela Secretaria de Estado de Administração Penitenciária (Seap). A maioria dos casos foi registrada no Ipat, onde quatro mulheres tentaram entregar porções de maconha aos companheiros presos na unidade, localizada no km 8 da rodovia BR-174.', 'extras/img/noticia12.jpg', '2018-08-27 23:41:18', 'Jhordan Jesse Oliveira'),
(66, 'Dupla invade panificadora e rouba mais de R$ 30 mil, no Centro de Manaus', 'Funcionários e proprietário do local foram amarrados e agredidos em ação.', 'Dois homens ainda não identificados invadiram uma panificadora no Centro de Manaus e roubaram mais de R$ 30 mil nesta segunda-feira (6). Durante a ação, os funcionários e o proprietário do local foram agredidos. A polícia investiga o caso.\r\n\r\nO roubo foi registrado por câmeras de segurança da panificadora, situada na Avenida Floriano Peixoto. Na ação, um dos criminosos armado vai até o escritório, amarra três funcionários e os agride.', 'extras/img/noticia11.jpg', '2018-08-27 23:43:01', 'Janival Vieira'),
(67, 'Amazonas registra aumento de 5,3% nas mortes violentas intencionais em 2017', 'Anuário Brasileiro de Segurança Pública divulgou dados nesta quinta-feira (9).', 'O aumento de 5,3% na taxa de mortes violentas entre 2016 e 2017 . Com isso, a taxa saltou de 29,7 para 31,3 mortes por 100 mil habitantes. Os dados são do Fórum Brasileiro de Segurança Pública, divulgados nesta quinta-feira (9).\r\n\r\nEm números absolutos, foram 1.271 mortes violentas no ano passado, o que representa alta de 6,9% em comparação com 2016, com 1.189 mortes no estado.', 'extras/img/noticia10.jpg', '2018-08-27 23:44:55', 'Noeme Caroline Santos'),
(68, 'Suspeito de roubo morre e outro é preso após perseguição policial em Manaus', 'Troca de tiros ocorreu nesta quarta-feira (8) no bairro Nossa Senhora de Fátima 1, Zona Norte.', 'Um homem morreu e outro foi preso após uma perseguição policial na noite desta quarta-feira (8) no bairro Nossa Senhora de Fátima 1, Zona Norte de Manaus. Segundo a polícia, a dupla roubou o carro de uma estudante e, durante a fuga, atirou contra a equipe policial.\r\n\r\nO roubo ocorreu na Rua 211, situada no núcleo 16 do bairro Cidade Nova, Zona Norte da capital. A universitária Raiza Pereira, de 25 anos, chegava próximo da residência onde mora quando foi abordada pelos criminosos, que estavam em um veículo modelo Siena.', 'extras/img/noticia9.jpg', '2018-08-27 23:46:24', 'Janival Vieira'),
(69, 'Suspeito de envolvimento em linchamento de estudante é preso em Manaus', 'Segundo a polícia, ele confirmou participação no crime.', 'Um homem de 21 anos foi preso nesta sexta-feira (10) por suspeita de envolvimento no linchamento do estudante Kaiubi de Oliveira Carvalho, 16. Segundo a polícia, ele confirmou participação no crime. O suspeito foi capturado no bairro Jorge Teixeira, Zona Leste de Manaus, mesma área onde o crime ocorreu.\r\n\r\nDe acordo com o tenente-coronel Franciney Bó, uma denúncia levou a equipe policial até a localização do suspeito, que estava na Rua Verbaco, por volta das 17h.', 'extras/img/noticia8.jpg', '2018-08-27 23:48:48', 'Jhordan Jesse Oliveira'),
(70, 'Manaus teve média de 87 celulares roubados e furtados por dia no primeiro semestre de 2018', 'Até junho, mais de 15 mil aparelhos de telefonia móvel foram furtados e roubados na capital.', 'A cada dia do ano de 2017 foram roubados e furtados, em média, 66 celulares em Manaus, de acordo com dados da Secretaria de Segurança Pública do Amazonas (SSP-AM). A ação dos criminosos avançou e, essa média de furtos e roubos saltou para 87 aparelhos celulares furtados e roubados diariamente na capital, somente nos seis primeiros meses deste ano. Os assaltantes, em alguns casos, mataram as vítimas para roubar os aparelhos.\r\n\r\nForam furtados e roubados 24.213 celulares no ano passado em Manaus. Os criminosos foram responsáveis pelo furto e roubo de 15.921 aparelhos de telefonia móvel, de janeiro a junho deste ano.', 'extras/img/noticia7.jpg', '2018-08-27 23:51:02', 'Noeme Caroline Santos'),
(71, 'Jovem é morto após ser abordado por homens armados em carro, na Zona Oeste de Manaus', 'Vitima foi atingida por tiros.', 'Um jovem de 23 anos foi morto a tiros, na tarde deste domingo (12), enquanto caminhava em via pública no bairro Vila da Prata, na Zona Oeste de Manaus.\r\n\r\nO crime ocorreu na rua Arthur Virgílio. Segundo populares, os criminosos chegaram no local em um carro cinza. Dois saíram do veículo - um deles usava, inclusive, uma bala clava.', 'extras/img/noticia6.jpg', '2018-08-27 23:53:03', 'Jhordan Jesse'),
(72, 'Briga entre vizinhas termina com dois mortos a facadas, em Manaus', 'Segundo a polícia, mulheres brigaram por conta de roupa e maridos se envolveram na discussão. Caso ocorreu em comunidade no Tarumã, na Zona Norte.', 'Dois homens morreram após uma briga entre vizinhos na Comunidade União da Vitória, bairro Tarumã, Zona Norte de Manaus, na tarde deste domingo (12). Segundo a polícia, a confusão começou depois que as esposas de moradores iniciaram uma discussão.\r\n\r\nO caso ocorreu no fim da tarde. Segundo a Polícia Civil, a briga começou entre as esposas de dois moradores. Uma delas teria ido na casa da outra para cobrar a devolução de uma roupa que ela havia emprestado.\r\n\r\nA polícia conta que a vizinha se negou a devolver e as duas começaram a discutir. Os companheiros das mulheres também se envolveram na briga, bem como outro vizinho.', 'extras/img/noticia5.jpg', '2018-08-27 23:54:02', 'Noeme Caroline Santos'),
(73, 'Casal suspeito de roubar carro com quase R$ 30 mil em jóias é preso, em Manaus', 'Ambos foram capturados nesta terça-feira (14) na Zona Norte da capital.', 'Um casal foi preso nesta terça-feira (14) por suspeita de roubar um carro no bairro Colônia Terra Nova, Zona Norte de Manaus. Dentro do veículo, os militares encontraram mostruários de jóias avaliadas em R$ 28 mil.\r\n\r\nA Polícia Militar (PM-AM) informou que o roubo do carro modelo Mob ocorreu por volta das 14h na Rua Louro Abacate, bairro Monte das Oliveiras, Zona Norte. Uma equipe foi acionada e localizou o veículo abandonado na Rua Bem-Bom, já no Colônia Terra Nova.', 'extras/img/noticia4.jpg', '2018-08-27 23:57:00', 'Janival Vieira'),
(74, 'Ex-babá denuncia abuso sexual de desembargador suspeito de estuprar neta, no AM', 'A defesa do desembargador diz que a vítima nunca trabalhou para ele.', 'Uma ex-funcionária da família do desembargador Rafael de Araújo Romano denunciou o magistrado por abuso sexual, que teria ocorrido na época em que ela trabalhava como babá para a família. Segundo o advogado que acompanhou a vítima, ela resolveu abrir o caso após a divulgação das denúncias de que o desembargador abusou da própria neta durante cerca de sete anos. A mulher afirmou, em denúncia, que os abusos iniciaram quando ela era menor de idade.', 'extras/img/noticia3.jpg', '2018-08-27 23:58:07', 'Janival Vieira'),
(75, 'Homem é preso e adolescente é apreendido por suspeita de assaltar ônibus em Manaus', 'Passageiros reagiram durante a ação criminosa.', 'Um homem de 24 anos foi preso e um adolescente, de 15, foi apreendido por suspeita de assaltar um ônibus do transporte coletivo na comunidade Campos Sales, Zona Oeste de Manaus. Ambos foram capturados nesta quarta-feira (22) depois que os passageiros reagiram durante a ação criminosa.\r\n\r\nDe acordo com o sargento Gilson Santos, da 20ª Companhia Interativa Comunitária (Cicom), a dupla estava em um coletivo da linha 126 quando anunciou o assalto utilizando facas. Quando o veículo passava pela Rua Jacamim, um dos passageiros reagiu e conseguiu desarmar um dos suspeitos.', 'extras/img/noticia2.jpeg', '2018-08-27 23:59:37', 'Jhordan Jesse'),
(76, 'SP tem mais de mil casos confirmados de sarampo entre capital e interior', 'Fundação de Vigilância em Saúde (FVS) aponta um total de 7.912 casos notificados da doença em todo o Estado.', 'O Amazonas tem 1.087 casos confirmados de sarampo em Manaus e em outros nove municípios. O número foi divulgado nesta terça (21) pela Fundação de Vigilância em Saúde (FVS), que aponta um total de 7.912 casos notificados da doença em todo o Estado.\r\nA FVS informou que 70,71% do público alvo no Amazonas já recebeu a dose da vacina contra o sarampo, o que representa 215,6 mil crianças. O número é um resultado parcial da Campanha Nacional de Vacinação contra Sarampo e Poliomielite, que irá ocorrer até 31 de agosto. Com relação à polio, a cobertura chegou a 49,48%.', 'extras/img/noticia1.jpg', '2018-08-28 00:01:20', 'Jhordan Jesse');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produtos_id` int(11) NOT NULL,
  `produtos_id_departamento` int(11) NOT NULL,
  `produtos_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produtos_id`, `produtos_id_departamento`, `produtos_nome`) VALUES
(1, 1, 'MOUSE'),
(2, 1, 'TECLADO'),
(3, 1, 'MONITOR'),
(4, 1, 'HD'),
(5, 1, 'MEMÓRIA'),
(6, 1, 'FONTE'),
(7, 2, 'BATERIA'),
(8, 2, 'CABO DE DADOS'),
(9, 2, 'DISPLAY'),
(10, 3, 'FOGÃO'),
(11, 3, 'GELADEIRA'),
(12, 3, 'LAVADORA DE ROUPAS'),
(13, 4, 'PLAYSTATION'),
(14, 4, 'WII'),
(15, 4, 'XBOX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`departamentos_id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produtos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `departamentos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produtos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `flexpeak`
--
CREATE DATABASE IF NOT EXISTS `flexpeak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flexpeak`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `rua` varchar(40) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cep` int(11) NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome`, `data_nasc`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `criacao`, `cep`, `curso`) VALUES
(9, 'Jhordan Jesse Oliveira de Albuquerque', '1998-01-11', 'Rua Leonardo Malcher', 443, 'Cachoeirina', 'Manaus', 'AM', '2019-03-14 13:24:00', 69020060, 5),
(10, 'Carol Santos', '2019-03-22', 'Rua Para', 666, 'Sao Francisco', 'Manaus', 'AM', '2019-03-14 13:30:25', 69076790, 3),
(11, 'Keicy Dias', '2019-03-20', 'Rua Boa Vista', 999, 'Ramalho Jr', 'Maues', 'AM', '2019-03-14 13:32:55', 69076790, 3),
(12, 'Gabriel Iannuzzi', '2019-03-17', 'Rua Major Gabriel', 1234, 'Centro', 'Manaus', 'AM', '2019-03-14 13:35:06', 69020060, 9),
(13, 'Noeme Caroline Santos Lopes', '1996-07-20', 'Rua Major Gabriel', 863, 'Centro', 'Manaus', 'AM', '2019-03-14 18:39:32', 69020060, 2),
(14, 'Lucas Brigia', '1995-02-12', 'Avenida Fernando Pessoa', 45, 'Japiim', 'Manaus', 'AM', '2019-03-14 19:06:20', 69076790, 2),
(15, 'Jessica Rayre Belo', '1997-10-11', 'Avenida Fernando Pessoa', 12, 'Japiim', 'Manaus', 'AM', '2019-03-14 19:11:27', 69076790, 5),
(17, 'Flavia Fernanda Santos Oliveira', '1996-09-12', 'Rua Major Gabriel', 890, 'Centro', 'Manaus', 'AM', '2019-03-15 02:30:17', 69020060, 2),
(18, 'Amanda Rebeca Santos', '1994-05-25', 'Avenida Djalma Batista', 77, 'Parque 10 de Novembro', 'Manaus', 'AM', '2019-03-15 12:57:31', 69050902, 6),
(19, 'Rosimary Storch Alves', '1996-03-19', 'Alameda Alfredo Volpi', 456, 'Ponta Negra', 'Manaus', 'AM', '2019-03-15 13:00:35', 69037100, 3),
(20, 'Alzenira Oliveira de Albuquerque', '1986-03-06', 'Rua Joaquim Marinho', 119, 'Parque 10 de Novembro', 'Manaus', 'AM', '2019-03-17 21:56:58', 69050540, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(60) NOT NULL,
  `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `criacao`, `id_professor`) VALUES
(2, 'Arquitetura', '2019-03-12 03:00:00', 3),
(3, 'Administração', '2019-03-13 22:41:09', 1),
(5, 'Enfermagem', '2019-04-14 19:09:29', 4),
(6, 'Servico Social', '2019-03-15 19:48:34', 3),
(8, 'Contabilidade', '2019-03-15 19:49:17', 6),
(9, 'Medicina', '2019-03-15 20:24:43', 4),
(10, 'Engenharia Civil', '2019-03-17 22:14:46', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id_professor` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL DEFAULT '0',
  `data_nasc` varchar(10) NOT NULL DEFAULT '0',
  `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id_professor`, `nome`, `data_nasc`, `criacao`) VALUES
(1, 'Aurea Melo', '2019-03-12', '2019-03-11 03:00:00'),
(3, 'Cassia de Paula', '1995-02-11', '2019-03-13 22:36:12'),
(4, 'Jonathas Silva', '1987-11-04', '2019-03-13 22:39:56'),
(6, 'Angela Siqueira Silva', '1983-04-24', '2019-03-15 19:53:37'),
(7, 'Natacha Delico Felix', '1990-08-09', '2019-03-15 20:28:12'),
(8, 'Jhordan Jesse Oliveira de Albuquerque', '1998-01-11', '2019-03-16 15:23:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `id_curso` (`curso`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_professor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-03-18 11:22:55', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portal`
--
CREATE DATABASE IF NOT EXISTS `portal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `portal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `subtitulo` varchar(200) NOT NULL DEFAULT '0',
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` tinytext NOT NULL,
  `img` varchar(240) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `subtitulo`, `autor`, `titulo`, `descricao`, `img`, `data`) VALUES
(23, 'A defesa do desembargador diz que a vítima nunca trabalhou para ele.', 'Jhordan Jesse', 'Ex-babá denuncia abuso sexual de desembargador suspeito de estuprar neta, no AM', 'teste', 'extras/img/noticia2.jpeg', '2018-08-27 23:02:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `protech`
--
CREATE DATABASE IF NOT EXISTS `protech` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `protech`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL DEFAULT '0',
  `senha` varchar(100) NOT NULL DEFAULT '0',
  `nome` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `user`, `senha`, `nome`) VALUES
(1, 'jhordan', '951753123', 'Jhordan Jessé Oliveira de Albuquerque'),
(2, 'carol', '123', 'Noeme Caroline Santos Lopes'),
(3, 'gabriel', '9865', 'Gabriel Iannuzzi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `dtn` varchar(10) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(250) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `dtn`, `endereco`, `numero`, `bairro`, `cidade`, `telefone`, `email`) VALUES
(3, 'Gabriel Iannuzzi', '2018-10-03', 'Rua Joaquim Nabuco', 2018, 'Centro', 'Manaus', '981223122', 'contato@teste.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_fisica`
--

CREATE TABLE `pessoa_fisica` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_fisica`
--

INSERT INTO `pessoa_fisica` (`id`, `cpf`) VALUES
(3, '17217');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_juridica`
--

CREATE TABLE `pessoa_juridica` (
  `id` int(11) NOT NULL,
  `cnpj` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL DEFAULT '0',
  `tamanho` varchar(60) NOT NULL DEFAULT '0',
  `anvisa` varchar(25) NOT NULL DEFAULT '0',
  `validade` varchar(10) NOT NULL DEFAULT '0',
  `quantidade` int(11) NOT NULL DEFAULT '0',
  `valor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lote` varchar(12) NOT NULL DEFAULT '0',
  `descricao` varchar(250) NOT NULL DEFAULT '0',
  `img` varchar(40) NOT NULL DEFAULT '0',
  `tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `tamanho`, `anvisa`, `validade`, `quantidade`, `valor`, `lote`, `descricao`, `img`, `tipo`) VALUES
(3, 'Cera de Escultura', '44', '52167890332', '30/01/2022', 5, '5522.00', '301BB5', 'Cera orgânica livre de resíduos e impurezas para evitar contaminação na fundição. Alto ponto de fusão ajustado para técnica de fundição rápida (83ºC). Maior rigidez da cera para não provocar distoções e má adaptação dos copings. Baixa contração p uma', 'extras/img/produto4.jpg', 2),
(5, 'Cerâmica Dentina A1+', '15', '02167890542', '0', 8, '345.00', '211VD6', 'Diminui o efeito cinza em pequenas espessuras.', 'extras/img/produto2.jpg', 2),
(6, 'Cerâmica Tissue', '12', '40167890332', '2019-06-10', 10, '180.00', '204VD5', 'Dentina cor de rosa para gengiva.', 'extras/img/produto3.jpg', 2),
(7, 'Líquido para coloração B2', '23', '02168970332', '2019-02-20', 10, '250.00', '204VD6', 'Para pigmentar zircônia crua.', 'extras/img/produto5.jpg', 1),
(8, 'Liquido para coloração C2 Prettau', '12', '02167890331', '2018-10-25', 6, '120.00', '204VD2', 'Para pigmentar zircônica prettau crua', 'extras/img/produto6.jpg', 1),
(16, 'Stain D2-D3 Prettau', '12', '40167890332', '2018-10-08', 6, '124.88', '204VD5', 'Pigmentação de superficie para cerâmica', 'extras/img/produto7.jpg', 1),
(17, 'Zircônia Translúcida 5 Alto', '23', '02167890332', '2020-05-12', 6, '365.90', '204VD5', 'Bloco para elementos unitários e pontes pequenas', 'extras/img/produto8.jpg', 1),
(18, 'Cerâmica Dentina A-1', '12', '40167890332', '2018-10-12', 10, '345.80', '204VD6', 'Dentina para dentes clareados.', 'extras/img/produto3.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id_tipo` int(11) NOT NULL,
  `nome_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `nome_tipo`) VALUES
(1, 'Medicamento'),
(2, 'Protese'),
(3, 'Boca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `tweet` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tweets`
--

INSERT INTO `tweets` (`id`, `tweet`) VALUES
(1, 'testando qualquer coisa'),
(2, 'amanda rebeca'),
(3, 'eu to muito apaixonado'),
(4, 'jhordan jesse oliveira'),
(5, 'Eu nao sei de nada'),
(6, 'Esperando segundo sol começar'),
(7, 'Fui pedido em namoro'),
(8, 'Sera que dessa vez vai?'),
(9, 'Pq eu quero mt'),
(10, 'Sera que vou me assumir'),
(11, 'gente eu to digitando sem olhar pro teclado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_produtos_tipos` (`tipo`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipo`),
  ADD UNIQUE KEY `id` (`id_tipo`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD CONSTRAINT `FK_pessoa_fisica_pessoas` FOREIGN KEY (`id`) REFERENCES `pessoas` (`id`);

--
-- Limitadores para a tabela `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD CONSTRAINT `FK_pessoa_juridica_pessoas` FOREIGN KEY (`id`) REFERENCES `pessoas` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_produtos_tipos` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`id_tipo`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `teste`
--
CREATE DATABASE IF NOT EXISTS `teste` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `matricula` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `matricula`, `nome`) VALUES
(1, 15172678, 'Amanda Rebeca Santos da Silva'),
(2, 14307073, 'Thayane Hellen Lira Barreto'),
(4, 15241661, 'Jhordan Jesse Oliveira de Albuquerque'),
(6, 14156789, 'Noeme Caroline Santos Lopes'),
(7, 16458719, 'Elayne Siqueira Bastos'),
(8, 19378296, 'Lucas Gonzales Duart'),
(9, 13768926, 'Gabriel Damas Pereira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunoss`
--

CREATE TABLE `alunoss` (
  `MATRICULA` int(11) NOT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `DATA_NASC` int(11) NOT NULL,
  `CPF_ALUNO` varchar(12) COLLATE utf8_bin NOT NULL,
  `SEXO` varchar(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `alunoss`
--

INSERT INTO `alunoss` (`MATRICULA`, `ID_CURSO`, `DATA_NASC`, `CPF_ALUNO`, `SEXO`) VALUES
(2021, 16, 2018, 'M', '2'),
(15172678, 16, 1995, 'F', '0'),
(15266516, 16, 1997, 'M', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `ID_ATIVIDADE` int(11) NOT NULL,
  `ID_LIDER` int(11) NOT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `ENUNCIADO` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA1` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA2` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA3` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA4` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA5` text COLLATE utf8_bin NOT NULL,
  `RESPOSTA_OFICIAL` varchar(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`ID_ATIVIDADE`, `ID_LIDER`, `ID_CURSO`, `ENUNCIADO`, `RESPOSTA1`, `RESPOSTA2`, `RESPOSTA3`, `RESPOSTA4`, `RESPOSTA5`, `RESPOSTA_OFICIAL`) VALUES
(1, 1234, 16, 'Nos SGBDs existem recursos para verificar se a criação de um indice pode ou não otimizar a execução de uma determinada consulta. No MySql, o comando que permite fazer exame é:', 'EXPLAIN', 'QUANTIFY', 'CURRENT_ROLE', 'CURRENT_TIME', 'CHECK_TIME', 'C'),
(2, 1234, 16, 'O termo NoSQL refere-se', 'a uma abordagem teorica que segue o principalde não utilização da linguagem SQL em banco de dados heterogêneos.', 'à renúncia às propriedades BASE (Basically Available, Soft state, Eventual consistency), potencializando seu espectro de uso.', 'ao aumento de escalabilidade das bases de dados neles armazenados, aliado a um desempenho mais satisfatório no seu acesso.', 'à facilidade de implementação de bases de dados normalizadas, com vistas a minimização de redundâncias no conjunto de dados.', 'à implementação simultânea das três componentes do modelo CAP: consistência, disponibilidade e tolerância ao particionamento. ', 'B'),
(3, 1234, 16, 'Em uma tela de cadastro de pedidos ocorre algumas falhas. No campo quantidade o usuário digitou uma letra, o código do cliente foi digitado, mas não apareceu nenhum nome no campo \"nome do cliente\" e, ao pesquisar o cliente por CPF, aparecem dois clientes na tela. Tais falhas são referentes a falta de integridade, respectivamente:', 'de entidade, de domínio e referencial.', 'todas de entidade', 'todas de domínio.', 'de domínio, de entidade e referencial.', 'de domínio, referencial e de entidade.', 'A'),
(4, 1234, 16, 'Na especificação completa de um trigger de um banco de dados relacional, há a declaração de 3 estruturas, denominadas', 'recurso, integridade e referência', 'restriçao, condição e recurso.', 'classificação, evento e divisão.', 'evento, condição e ação.', 'referência, ação e restrição.', 'A'),
(5, 1234, 16, 'O controle de acesso de usuários ao banco de dados baseado em papéis (roles) permite', 'apenas a atribuição de vários privilégios a vários usuários.', 'apenas a revogação de vários privilégios a vários usuários.', 'a atribuição e revogação de vários privilégios a vários usuários.', 'a atribuição e a revogação de um único privilégio a vários usuários.', 'a atribuição e a revogação de vários privilégios a um único usuário.', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codigo`, `nome`) VALUES
(14, 'Arquitetura'),
(15, 'Enfermagem'),
(16, 'Ciencia da Computacao'),
(17, 'Engenharia'),
(18, 'Educação Fisica'),
(19, 'administracao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos_lider`
--

CREATE TABLE `cursos_lider` (
  `ID_CURSO_LIDER` int(11) NOT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `ID_LIDER` int(11) NOT NULL,
  `DATA_ADM` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cursos_lider`
--

INSERT INTO `cursos_lider` (`ID_CURSO_LIDER`, `ID_CURSO`, `ID_LIDER`, `DATA_ADM`) VALUES
(3, 16, 1234, '2006-05-07'),
(4, 16, 12131415, '2016-02-16'),
(5, 16, 3031, '2018-06-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `ID_DISCIPLINA` int(11) NOT NULL,
  `NOME` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ID_CURSO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`ID_DISCIPLINA`, `NOME`, `ID_CURSO`) VALUES
(6, 'Banco de Dados', 16),
(7, 'Matematica discreta', 16),
(8, 'Calculo', 17),
(9, 'Anatomia', 18),
(10, 'economia', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disci_lider`
--

CREATE TABLE `disci_lider` (
  `ID_DISCI_LIDER` int(11) NOT NULL,
  `ID_DISC` int(11) NOT NULL DEFAULT '0',
  `ID_LIDER` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `disci_lider`
--

INSERT INTO `disci_lider` (`ID_DISCI_LIDER`, `ID_DISC`, `ID_LIDER`) VALUES
(2, 6, 1234),
(3, 6, 12131415),
(4, 9, 3031);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id` int(11) NOT NULL,
  `questao` longtext COLLATE utf8_bin NOT NULL,
  `resposta1` longtext COLLATE utf8_bin NOT NULL,
  `resposta2` longtext COLLATE utf8_bin NOT NULL,
  `resposta3` longtext COLLATE utf8_bin NOT NULL,
  `resposta4` longtext COLLATE utf8_bin NOT NULL,
  `resposta5` longtext COLLATE utf8_bin NOT NULL,
  `resposta_oficial` varchar(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `questao`, `resposta1`, `resposta2`, `resposta3`, `resposta4`, `resposta5`, `resposta_oficial`) VALUES
(1, 'testando', 'teste1', 'teste2', 'teste3', 'teste4', '', 'C'),
(2, 'Considere hipoteticamente que em um Tribunal cada Juiz conta com a ajuda de vários Assistentes, de acordo com o volume de processos que precisa analisar e julgar. Cada Assistente, por sua vez, auxilia', 'a chave primária da tabela Juiz será chave estrangeira na tabela Assistente e a chave primária da tabela Assistente será chave estrangeira na tabela Juiz', 'será necessário criar uma tabela de ligação entre Juiz e Assistente e o relacionamento n:m dará lugar a dois relacionamentos 1:n.', 'será estabelecido um relacionamento bidirecional entre as tabelas Juiz e Assistente, com cardinalidade 1:1.', 'para que a relação n:m seja mantida, as chaves primárias das tabelas Juiz e Assistente deverão ser compostas pelo Id do Juiz e pelo Id do Assistente.', 'será necessário criar uma tabela de ligação entre Juiz e Assistente e o relacionamento n:m dará lugar a dois relacionamentos 1:n', 'B'),
(3, 'Considere hipoteticamente que em um Tribunal cada Juiz conta com a ajuda de vários Assistentes, de acordo com o volume de processos que precisa analisar e julgar. Cada Assistente, por sua vez, auxilia vários Juízes, de acordo com a demanda de trabalho. Se Juiz e Assistente forem entidades de um modelo de dados relacional, a cardinalidade entre elas será n:m. Na criação das tabelas a partir do modelo,', 'a chave primária da tabela Juiz será chave estrangeira na tabela Assistente e a chave primária da tabela Assistente será chave estrangeira na tabela Juiz.', 'será necessário criar uma tabela de ligação entre Juiz e Assistente e o relacionamento n:m dará lugar a dois relacionamentos 1:n.', 'será estabelecido um relacionamento bidirecional entre as tabelas Juiz e Assistente, com cardinalidade 1:1.', 'para que a relação n:m seja mantida, as chaves primárias das tabelas Juiz e Assistente deverão ser compostas pelo Id do Juiz e pelo Id do Assistente.', 'será necessário criar uma tabela de ligação entre Juiz e Assistente, gerando assim dois relacionamentos 1:1.', 'D'),
(4, 'Considere hipoteticamente que em um Tribunal cada Juiz conta com a ajuda de vários Assistentes, de acordo com o volume de processos que precisa analisar e julgar. Cada Assistente, por sua vez, auxilia vários Juízes, de acordo com a demanda de trabalho. Se Juiz e Assistente forem entidades de um modelo de dados relacional, a cardinalidade entre elas será n:m. Na criação das tabelas a partir do modelo,', 'a chave primária da tabela Juiz será chave estrangeira na tabela Assistente e a chave primária da tabela Assistente será chave estrangeira na tabela Juiz.', 'será necessário criar uma tabela de ligação entre Juiz e Assistente e o relacionamento n:m dará lugar a dois relacionamentos 1:n.', 'será estabelecido um relacionamento bidirecional entre as tabelas Juiz e Assistente, com cardinalidade 1:1.', 'para que a relação n:m seja mantida, as chaves primárias das tabelas Juiz e Assistente deverão ser compostas pelo Id do Juiz e pelo Id do Assistente.', 'será necessário criar uma tabela de ligação entre Juiz e Assistente, gerando assim dois relacionamentos 1:1.', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicioss`
--

CREATE TABLE `exercicioss` (
  `ID_EXERCICIO` int(11) NOT NULL,
  `ID_ATIVIDADE` int(11) NOT NULL DEFAULT '0',
  `ID_ALUNO` int(11) NOT NULL DEFAULT '0',
  `OBSERVACOES` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lider`
--

CREATE TABLE `lider` (
  `MATRICULA` int(11) NOT NULL,
  `CPF_LIDER` varchar(14) COLLATE utf8_bin NOT NULL,
  `DATA_NASC` varchar(10) COLLATE utf8_bin NOT NULL,
  `SEXO` varchar(1) COLLATE utf8_bin NOT NULL,
  `FORMACAO` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `lider`
--

INSERT INTO `lider` (`MATRICULA`, `CPF_LIDER`, `DATA_NASC`, `SEXO`, `FORMACAO`) VALUES
(1234, '1234567', '1977-06-14', 'F', 'POS EM LINUX'),
(3031, '237435', '2018-06-12', 'M', 'pos em compiladores'),
(12131415, '65483363', '1988-06-14', 'F', 'Doutorando em Banco de Dados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nota1` float NOT NULL,
  `nota2` float NOT NULL,
  `nota3` float NOT NULL,
  `nota4` float NOT NULL,
  `media` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`id`, `nota1`, `nota2`, `nota3`, `nota4`, `media`) VALUES
(1, 6.7, 8.9, 5.6, 6.7, 6.9),
(2, 7, 8.6, 9.4, 4.6, 7.4),
(3, 7.8, 8.9, 6.3, 8, 7.7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notass`
--

CREATE TABLE `notass` (
  `ID_NOTA` int(11) NOT NULL,
  `ID_ALUNO` int(11) NOT NULL DEFAULT '0',
  `ID_SIMULADO` int(11) NOT NULL DEFAULT '0',
  `NOTA` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `simulados`
--

CREATE TABLE `simulados` (
  `ID_SIMULADO` int(11) NOT NULL,
  `ID_ATIVIDADE` int(11) NOT NULL DEFAULT '0',
  `ID_ALUNO` int(11) NOT NULL DEFAULT '0',
  `NOTA` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `id_teste` int(11) NOT NULL,
  `simulado` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `notas` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarioss`
--

CREATE TABLE `usuarioss` (
  `MATRICULA` int(11) NOT NULL,
  `NOME` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `TELEFONE` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `EMAIL` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `TIPO_USUARIO` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `SENHA` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuarioss`
--

INSERT INTO `usuarioss` (`MATRICULA`, `NOME`, `TELEFONE`, `EMAIL`, `TIPO_USUARIO`, `SENHA`) VALUES
(1234, 'Angela Siqueira', '984396638', 'angela@teste.com', 'Lider', 'teste'),
(2021, 'Rodrigo Silva', '4545345', 'rodrigo@gmail.com', 'Aluno', 'teste'),
(3031, 'jonathas', '324232', 'jhordanjes@gmail.com', 'Lider', 'fvsd'),
(12131415, 'Aurea Melo Oliveira', '98439668', 'aurea@uninorte.com', 'Lider', 'banco123'),
(15172678, 'Amanda Rebeca Santos da Silva', '92992297514', 'amanda@gmail.com', 'Aluno', 'amanda1'),
(15241661, 'Jhordan Jesse Oliveira de Albuquerque', '984109787', 'jhordanjes@gmail.com', 'Aluno', '951753'),
(15266516, 'Leonardo Xavier', '999999999', 'leonardosena@hotmail.com', 'Aluno', 'mountain00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alunoss`
--
ALTER TABLE `alunoss`
  ADD PRIMARY KEY (`MATRICULA`),
  ADD KEY `CURSO_ID` (`ID_CURSO`);

--
-- Indexes for table `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`ID_ATIVIDADE`),
  ADD UNIQUE KEY `ID_ATIVIDADE` (`ID_ATIVIDADE`),
  ADD KEY `LIDER_FK` (`ID_LIDER`),
  ADD KEY `CURSO_FK` (`ID_CURSO`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `cursos_lider`
--
ALTER TABLE `cursos_lider`
  ADD PRIMARY KEY (`ID_CURSO_LIDER`),
  ADD KEY `FK_CURSO` (`ID_CURSO`),
  ADD KEY `FK_LIDER` (`ID_LIDER`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`ID_DISCIPLINA`),
  ADD KEY `ID_CURSO` (`ID_CURSO`);

--
-- Indexes for table `disci_lider`
--
ALTER TABLE `disci_lider`
  ADD PRIMARY KEY (`ID_DISCI_LIDER`),
  ADD UNIQUE KEY `ID_DISCI_LIDER` (`ID_DISCI_LIDER`),
  ADD KEY `ID_DISC` (`ID_DISC`),
  ADD KEY `ID_LIIDER` (`ID_LIDER`);

--
-- Indexes for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercicioss`
--
ALTER TABLE `exercicioss`
  ADD PRIMARY KEY (`ID_EXERCICIO`),
  ADD UNIQUE KEY `ID_EXERCICIO` (`ID_EXERCICIO`),
  ADD KEY `FK_ATIVIDADE` (`ID_ATIVIDADE`),
  ADD KEY `FK_ALUNO` (`ID_ALUNO`);

--
-- Indexes for table `lider`
--
ALTER TABLE `lider`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notass`
--
ALTER TABLE `notass`
  ADD PRIMARY KEY (`ID_NOTA`),
  ADD UNIQUE KEY `ID_NOTA` (`ID_NOTA`),
  ADD KEY `ALUNO_FK` (`ID_ALUNO`),
  ADD KEY `SIMULADO_ID` (`ID_SIMULADO`);

--
-- Indexes for table `simulados`
--
ALTER TABLE `simulados`
  ADD PRIMARY KEY (`ID_SIMULADO`),
  ADD UNIQUE KEY `ID_SIMULADO` (`ID_SIMULADO`),
  ADD KEY `ID_ATIVIDADE` (`ID_ATIVIDADE`),
  ADD KEY `ID_ALUNO_FK` (`ID_ALUNO`);

--
-- Indexes for table `teste`
--
ALTER TABLE `teste`
  ADD PRIMARY KEY (`id_teste`);

--
-- Indexes for table `usuarioss`
--
ALTER TABLE `usuarioss`
  ADD PRIMARY KEY (`MATRICULA`),
  ADD UNIQUE KEY `MATRICULA` (`MATRICULA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `ID_ATIVIDADE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cursos_lider`
--
ALTER TABLE `cursos_lider`
  MODIFY `ID_CURSO_LIDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `ID_DISCIPLINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `disci_lider`
--
ALTER TABLE `disci_lider`
  MODIFY `ID_DISCI_LIDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercicioss`
--
ALTER TABLE `exercicioss`
  MODIFY `ID_EXERCICIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notass`
--
ALTER TABLE `notass`
  MODIFY `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simulados`
--
ALTER TABLE `simulados`
  MODIFY `ID_SIMULADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teste`
--
ALTER TABLE `teste`
  MODIFY `id_teste` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alunoss`
--
ALTER TABLE `alunoss`
  ADD CONSTRAINT `CURSO_ID` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`codigo`),
  ADD CONSTRAINT `MATRICULA` FOREIGN KEY (`MATRICULA`) REFERENCES `usuarioss` (`MATRICULA`);

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `CURSO_FK` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`codigo`),
  ADD CONSTRAINT `LIDER_FK` FOREIGN KEY (`ID_LIDER`) REFERENCES `lider` (`MATRICULA`);

--
-- Limitadores para a tabela `cursos_lider`
--
ALTER TABLE `cursos_lider`
  ADD CONSTRAINT `FK_CURSO` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`codigo`),
  ADD CONSTRAINT `FK_LIDER` FOREIGN KEY (`ID_LIDER`) REFERENCES `lider` (`MATRICULA`);

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `ID_CURSO` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`codigo`);

--
-- Limitadores para a tabela `disci_lider`
--
ALTER TABLE `disci_lider`
  ADD CONSTRAINT `ID_DISC` FOREIGN KEY (`ID_DISC`) REFERENCES `disciplinas` (`ID_DISCIPLINA`),
  ADD CONSTRAINT `ID_LIIDER` FOREIGN KEY (`ID_LIDER`) REFERENCES `lider` (`MATRICULA`);

--
-- Limitadores para a tabela `exercicioss`
--
ALTER TABLE `exercicioss`
  ADD CONSTRAINT `FK_ALUNO` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunoss` (`MATRICULA`),
  ADD CONSTRAINT `FK_ATIVIDADE` FOREIGN KEY (`ID_ATIVIDADE`) REFERENCES `atividades` (`ID_ATIVIDADE`);

--
-- Limitadores para a tabela `lider`
--
ALTER TABLE `lider`
  ADD CONSTRAINT `MATRICULA_FK` FOREIGN KEY (`MATRICULA`) REFERENCES `usuarioss` (`MATRICULA`);

--
-- Limitadores para a tabela `notass`
--
ALTER TABLE `notass`
  ADD CONSTRAINT `ALUNO_FK` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunoss` (`MATRICULA`),
  ADD CONSTRAINT `SIMULADO_ID` FOREIGN KEY (`ID_SIMULADO`) REFERENCES `simulados` (`ID_SIMULADO`);

--
-- Limitadores para a tabela `simulados`
--
ALTER TABLE `simulados`
  ADD CONSTRAINT `ID_ALUNO_FK` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunoss` (`MATRICULA`),
  ADD CONSTRAINT `ID_ATIVIDADE` FOREIGN KEY (`ID_ATIVIDADE`) REFERENCES `atividades` (`ID_ATIVIDADE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
