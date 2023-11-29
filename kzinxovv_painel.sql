-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07-Jul-2020 às 20:31
-- Versão do servidor: 10.3.23-MariaDB-cll-lve
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kzinxovv_painel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_avisos`
--

CREATE TABLE `aa_avisos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_avisos`
--

INSERT INTO `aa_avisos` (`id`, `titulo`, `texto`, `autor`, `time`) VALUES
(76, 'KPanel Content Manager 2.0', '<p>Hello World!</p>', 'Gabriel', '1503363848'),
(78, 'Convocando os gados', '<p>HELLO CORNADA, SEJAM BEM VINDOS, N&Atilde;O BAGUNCEM ESSA MERDA!</p>', 'Admin', '1593725497');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_avisos_visto`
--

CREATE TABLE `aa_avisos_visto` (
  `id` int(11) NOT NULL,
  `aviso_id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_canais`
--

CREATE TABLE `aa_canais` (
  `canal_id` int(11) NOT NULL,
  `canal` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pai` int(11) NOT NULL,
  `diretorio` text CHARACTER SET utf8 NOT NULL,
  `ordem` int(11) NOT NULL,
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_canais`
--

INSERT INTO `aa_canais` (`canal_id`, `canal`, `pai`, `diretorio`, `ordem`, `status`) VALUES
(1, 'Meus Dados', 0, 'Null', 1, 'true'),
(3, 'Administração', 0, 'Null', 2, 'true'),
(5, 'Home', 0, 'Null', 3, 'true'),
(6, 'Moderação', 0, 'Null', 5, 'false'),
(7, 'Noticiário', 0, 'Null', 6, 'true'),
(8, 'Valores', 0, 'Null', 8, 'false'),
(9, 'Configurações', 1, 'configuracoes', 2, 'true'),
(10, 'Uploads', 1, 'uploads', 3, 'true'),
(11, 'Membros da Equipe', 3, 'membros', 5, 'true'),
(12, 'Cargos da Equipe', 3, 'cargos', 3, 'true'),
(13, 'Canais', 3, 'canais', 2, 'true'),
(14, 'Permissões de Cargo', 3, 'permissoes', 4, 'true'),
(16, 'Locução', 0, 'Null', 7, 'false'),
(18, 'Slide', 3, 'slide', 9, 'true'),
(19, 'Banir por IP', 3, 'banir', 7, 'true'),
(20, 'Configurações de Rádio', 3, 'configuracoes_radio', 6, 'true'),
(21, 'Lista Negra', 3, 'adc_lista_negra', 8, 'false'),
(22, 'Tema do Site', 3, 'tema_site', 16, 'false'),
(23, 'Logs', 0, 'Null', 9, 'true'),
(25, 'Tickets', 3, 'tickets', 10, 'false'),
(26, 'Desmarcar Horários', 4, 'desmarcar_horarios', 7, 'false'),
(27, 'Vinhetas', 3, 'vinhetas_add', 11, 'false'),
(28, 'Notícias Postadas', 4, 'noticias', 1, 'true'),
(29, 'Eventos Postados', 4, 'eventos', 2, 'true'),
(30, 'Categoria de Notícias', 4, 'cat_noticias', 3, 'true'),
(31, 'Categoria de Artes', 4, 'cat_artes', 5, 'false'),
(32, 'Categoria de Tópicos', 4, 'cat_topicos', 4, 'false'),
(33, 'Destaques', 4, 'destaques', 7, 'false'),
(34, 'Gerar Moedas', 4, 'gerar_codigo', 8, 'false'),
(35, 'Sites Parceiros', 4, 'parceiros', 9, 'true'),
(86, 'Notificações', 1, 'notificacoes', 1, 'true'),
(37, 'Grupos Parceiros', 4, 'quartos_parceiros', 10, 'true'),
(38, 'Avisos', 3, 'avisos', 1, 'true'),
(39, 'Alertas no Site', 3, 'alerta', 12, 'false'),
(40, 'Notificar Membro', 4, 'notificacao', 12, 'false'),
(41, 'Entrar no Ar', 16, 'entrar_ar', 1, 'false'),
(42, 'Pedidos', 16, 'pedidos', 2, 'false'),
(43, 'Horários', 16, 'horario', 4, 'false'),
(44, 'Vinhetas', 16, 'vinhetas', 42, 'false'),
(45, 'Gerar Presença', 16, 'presenca', 3, 'false'),
(47, 'Tópicos Postados', 6, 'topicos_postados', 1, 'false'),
(48, 'Artes Postadas', 6, 'artes_postadas', 2, 'false'),
(49, 'Comentários em Noticias', 6, 'noticias_comentarios', 3, 'false'),
(50, 'Comentários em Tópicos', 6, 'topicos_comentarios', 5, 'false'),
(51, 'Comentários em Artes', 6, 'artes_comentarios', 5, 'false'),
(52, 'Remover Assinatura', 6, 'assinatura', 6, 'false'),
(53, 'Remover Avatar', 6, 'avatar', 7, 'false'),
(54, 'Presentear Moedas', 4, 'presentear_moedas', 6, 'false'),
(55, 'Usuários Registrados', 6, 'usuarios', 9, 'false'),
(56, 'Presentear Emblemas', 4, 'presentear_emblemas', 6, 'false'),
(57, 'Postar Notícias', 7, 'postar_noticias', 1, 'true'),
(58, 'Postar Eventos', 7, 'postar_eventos', 2, 'true'),
(59, 'Postar Coisas Grátis', 7, 'postar_coisas_gratis', 3, 'false'),
(60, 'Postar Emblemas', 7, 'postar_ultimos_emblemas', 4, 'false'),
(61, 'Categoria', 8, 'valores_cat', 1, 'false'),
(62, 'Valores', 8, 'valores', 2, 'false'),
(63, 'Código de Moedas', 23, 'logs_moedas', 4, 'false'),
(64, 'Moedas Usadas', 23, 'logs_moedas_usadas', 5, 'false'),
(65, 'Presença Gerada', 23, 'logs_presenca', 3, 'false'),
(66, 'Áreas do Painel', 23, 'logs_painel', 1, 'true'),
(67, 'Expulsão de Locutor', 23, 'logs_kick', 2, 'false'),
(4, 'Coordenação', 0, 'Null', 4, 'true'),
(72, 'Quarto do DJ', 16, 'quarto_dj', 5, 'false'),
(73, 'Tema do Painel', 3, 'tema_painel', 17, 'true'),
(74, 'Timeline', 6, 'timeline', 11, 'false'),
(75, 'Top Music', 3, 'top_music', 13, 'false'),
(76, 'Páginas do Site', 3, 'paginas', 14, 'true'),
(77, 'Loja', 4, 'loja', 11, 'false'),
(89, 'Tópicos Postados', 4, 'topicos', 1, 'false'),
(90, 'Artes Postadas', 4, 'artes', 1, 'false'),
(91, 'Comentários em Eventos', 6, 'eventos_comentarios', 4, 'false'),
(92, 'Emblemas', 3, 'emblemas', 9, 'false'),
(93, 'Mensagens', 5, 'mensagens', 1, 'false'),
(94, 'Aliados', 4, 'aliados', 13, 'true'),
(95, 'Postar projetos', 7, 'postar_projetos', 5, 'true'),
(96, 'Projetos', 4, 'projetos', 10, 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_cargos`
--

CREATE TABLE `aa_cargos` (
  `cargo_id` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `cargo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_cargos`
--

INSERT INTO `aa_cargos` (`cargo_id`, `ordem`, `cargo`, `icone`, `status`) VALUES
(1, 1, 'WebMaster', '', 'true'),
(2, 2, 'Diretor', '', 'true'),
(3, 3, 'Administrador de Rádio', '', 'true'),
(4, 3, 'Administrador de Conteúdo', '', 'true'),
(5, 3, 'Administrador de Marketing', '', 'true'),
(6, 1, 'Desenvolvedor', '', 'true'),
(7, 4, 'Supervisor de Rádio', '', 'true'),
(8, 4, 'Supervisor de Conteúdo', '', 'true'),
(9, 4, 'Supervisor de Marketing', '', 'true'),
(10, 5, 'Coordenador de Rádio', '', 'true'),
(11, 5, 'Coordenador de Conteúdo', '', 'true'),
(12, 5, 'Coordenador de Marketing', '', 'true'),
(18, 6, 'Locutor', '', 'true'),
(19, 6, 'Jornalista', '', 'true'),
(20, 6, 'Moderador', '', 'true'),
(21, 6, 'Promotor', '', 'true'),
(22, 6, 'Pixel Artista', '', 'true'),
(23, 6, 'Divulgador', '', 'true'),
(24, 6, 'Sonoplasta', '', 'true'),
(25, 6, 'Marketing', '', 'true'),
(26, 6, 'Suporte de Rádio', '', 'true'),
(27, 1, 'Assessores', '', 'false');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_dados_radio`
--

CREATE TABLE `aa_dados_radio` (
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `porta` varchar(255) CHARACTER SET utf8 NOT NULL,
  `senha_radio` text CHARACTER SET utf8 NOT NULL,
  `senha_kick` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_dados_radio`
--

INSERT INTO `aa_dados_radio` (`ip`, `porta`, `senha_radio`, `senha_kick`) VALUES
('sonic.dedicado.stream', '8084', '123', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_horarios`
--

CREATE TABLE `aa_horarios` (
  `id` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fixo` enum('false','true') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_horarios`
--

INSERT INTO `aa_horarios` (`id`, `dia`, `hora`, `user_id`, `fixo`) VALUES
(1, 1, 0, 0, 'false'),
(2, 1, 1, 0, 'false'),
(3, 1, 2, 0, 'false'),
(4, 1, 3, 0, 'false'),
(5, 1, 4, 0, 'false'),
(6, 1, 5, 0, 'false'),
(7, 1, 6, 0, 'false'),
(8, 1, 7, 0, 'false'),
(9, 1, 8, 0, 'false'),
(10, 1, 9, 0, 'false'),
(11, 1, 10, 0, 'false'),
(12, 1, 11, 0, 'false'),
(13, 1, 12, 0, 'false'),
(14, 1, 13, 0, 'false'),
(15, 1, 14, 0, 'false'),
(16, 1, 15, 0, 'false'),
(17, 1, 16, 0, 'false'),
(18, 1, 17, 0, 'false'),
(19, 1, 18, 0, 'false'),
(20, 1, 19, 0, 'false'),
(21, 1, 20, 0, 'false'),
(22, 1, 21, 0, 'false'),
(23, 1, 22, 0, 'false'),
(24, 1, 23, 0, 'false'),
(25, 2, 0, 0, 'false'),
(26, 2, 1, 0, 'false'),
(27, 2, 2, 0, 'false'),
(28, 2, 3, 0, 'false'),
(29, 2, 4, 0, 'false'),
(30, 2, 5, 0, 'false'),
(31, 2, 6, 0, 'false'),
(32, 2, 7, 0, 'false'),
(33, 2, 8, 0, 'false'),
(34, 2, 9, 0, 'false'),
(35, 2, 10, 0, 'false'),
(36, 2, 11, 0, 'false'),
(37, 2, 12, 0, 'false'),
(38, 2, 13, 0, 'false'),
(39, 2, 14, 0, 'false'),
(40, 2, 15, 0, 'false'),
(41, 2, 16, 0, 'false'),
(42, 2, 17, 0, 'false'),
(43, 2, 18, 0, 'false'),
(44, 2, 19, 0, 'false'),
(45, 2, 20, 0, 'false'),
(46, 2, 21, 0, 'false'),
(47, 2, 22, 0, 'false'),
(48, 2, 23, 0, 'false'),
(49, 3, 0, 0, 'false'),
(50, 3, 1, 0, 'false'),
(51, 3, 2, 0, 'false'),
(52, 3, 3, 0, 'false'),
(53, 3, 4, 0, 'false'),
(54, 3, 5, 0, 'false'),
(55, 3, 6, 0, 'false'),
(56, 3, 7, 0, 'false'),
(57, 3, 8, 0, 'false'),
(58, 3, 9, 0, 'false'),
(59, 3, 10, 0, 'false'),
(60, 3, 11, 0, 'false'),
(61, 3, 12, 0, 'false'),
(62, 3, 13, 0, 'false'),
(63, 3, 14, 0, 'false'),
(64, 3, 15, 0, 'false'),
(65, 3, 16, 0, 'false'),
(66, 3, 17, 0, 'false'),
(67, 3, 18, 0, 'false'),
(68, 3, 19, 0, 'false'),
(69, 3, 20, 0, 'false'),
(70, 3, 21, 0, 'false'),
(71, 3, 22, 0, 'false'),
(72, 3, 23, 0, 'false'),
(73, 4, 0, 0, 'false'),
(74, 4, 1, 0, 'false'),
(75, 4, 2, 0, 'false'),
(76, 4, 3, 0, 'false'),
(77, 4, 4, 0, 'false'),
(78, 4, 5, 0, 'false'),
(79, 4, 6, 0, 'false'),
(80, 4, 7, 0, 'false'),
(81, 4, 8, 0, 'false'),
(82, 4, 9, 0, 'false'),
(83, 4, 10, 0, 'false'),
(84, 4, 11, 0, 'false'),
(85, 4, 12, 0, 'false'),
(86, 4, 13, 0, 'false'),
(87, 4, 14, 0, 'false'),
(88, 4, 15, 0, 'false'),
(89, 4, 16, 0, 'false'),
(90, 4, 17, 0, 'false'),
(91, 4, 18, 0, 'false'),
(92, 4, 19, 0, 'false'),
(93, 4, 20, 0, 'false'),
(94, 4, 21, 0, 'false'),
(95, 4, 22, 0, 'false'),
(96, 4, 23, 0, 'false'),
(97, 5, 0, 0, 'false'),
(98, 5, 1, 0, 'false'),
(99, 5, 2, 0, 'false'),
(100, 5, 3, 0, 'false'),
(101, 5, 4, 0, 'false'),
(102, 5, 5, 0, 'false'),
(103, 5, 6, 0, 'false'),
(104, 5, 7, 0, 'false'),
(105, 5, 8, 0, 'false'),
(106, 5, 9, 0, 'false'),
(107, 5, 10, 0, 'false'),
(108, 5, 11, 0, 'false'),
(109, 5, 12, 0, 'false'),
(110, 5, 13, 0, 'false'),
(111, 5, 14, 0, 'false'),
(112, 5, 15, 0, 'false'),
(113, 5, 16, 0, 'false'),
(114, 5, 17, 0, 'false'),
(115, 5, 18, 0, 'false'),
(116, 5, 19, 0, 'false'),
(117, 5, 20, 0, 'false'),
(118, 5, 21, 0, 'false'),
(119, 5, 22, 0, 'false'),
(120, 5, 23, 0, 'false'),
(121, 6, 0, 0, 'false'),
(122, 6, 1, 0, 'false'),
(123, 6, 2, 0, 'false'),
(124, 6, 3, 0, 'false'),
(125, 6, 4, 0, 'false'),
(126, 6, 5, 0, 'false'),
(127, 6, 6, 0, 'false'),
(128, 6, 7, 0, 'false'),
(129, 6, 8, 0, 'false'),
(130, 6, 9, 0, 'false'),
(131, 6, 10, 0, 'false'),
(132, 6, 11, 0, 'false'),
(133, 6, 12, 0, 'false'),
(134, 6, 13, 0, 'false'),
(135, 6, 14, 0, 'false'),
(136, 6, 15, 0, 'false'),
(137, 6, 16, 0, 'false'),
(138, 6, 17, 0, 'false'),
(139, 6, 18, 0, 'false'),
(140, 6, 19, 0, 'false'),
(141, 6, 20, 0, 'false'),
(142, 6, 21, 0, 'false'),
(143, 6, 22, 0, 'false'),
(144, 6, 23, 0, 'false'),
(145, 7, 0, 0, 'false'),
(146, 7, 1, 0, 'false'),
(147, 7, 2, 0, 'false'),
(148, 7, 3, 0, 'false'),
(149, 7, 4, 0, 'false'),
(150, 7, 5, 0, 'false'),
(151, 7, 6, 0, 'false'),
(152, 7, 7, 0, 'false'),
(153, 7, 8, 0, 'false'),
(154, 7, 9, 0, 'false'),
(155, 7, 10, 0, 'false'),
(156, 7, 11, 0, 'false'),
(157, 7, 12, 0, 'false'),
(158, 7, 13, 0, 'false'),
(159, 7, 14, 0, 'false'),
(160, 7, 15, 0, 'false'),
(161, 7, 16, 0, 'false'),
(162, 7, 17, 0, 'false'),
(163, 7, 18, 0, 'false'),
(164, 7, 19, 0, 'false'),
(165, 7, 20, 0, 'false'),
(166, 7, 21, 0, 'false'),
(167, 7, 22, 0, 'false'),
(168, 7, 23, 0, 'false'),
(0, 0, 1594609200, 0, 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_ip_ban`
--

CREATE TABLE `aa_ip_ban` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `motivo` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_ktema`
--

CREATE TABLE `aa_ktema` (
  `tema` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_ktema`
--

INSERT INTO `aa_ktema` (`tema`) VALUES
('701065');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_lista_negra`
--

CREATE TABLE `aa_lista_negra` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `motivo` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_locutor_voto`
--

CREATE TABLE `aa_locutor_voto` (
  `id` int(11) NOT NULL,
  `locutor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tipo` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_logs_kick`
--

CREATE TABLE `aa_logs_kick` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_logs_moedas`
--

CREATE TABLE `aa_logs_moedas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `valor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `estoque` varchar(255) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_logs_painel`
--

CREATE TABLE `aa_logs_painel` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `canal` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_logs_painel`
--

INSERT INTO `aa_logs_painel` (`id`, `usuario`, `canal`, `ip`, `time`) VALUES
(1, 'Admin', 'Página Inicial', '187.113.181.148', '1593628071'),
(2, 'Admin', 'Canais', '187.113.181.148', '1593628094'),
(3, 'Admin', 'Página Inicial', '187.113.181.148', '1593628160'),
(4, 'Admin', 'Página Inicial', '187.113.181.148', '1593628162'),
(5, 'Admin', 'Página Inicial', '187.113.181.148', '1593628485'),
(6, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628530'),
(7, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628538'),
(8, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628542'),
(9, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628576'),
(10, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628578'),
(11, 'Admin', 'Página Inicial', '201.68.176.47', '1593628579'),
(12, 'Admin', 'Páginas do Site', '187.113.181.148', '1593628585'),
(13, 'Admin', 'Página Inicial', '201.68.176.47', '1593628622'),
(14, 'Admin', 'Cargos da Equipe', '187.113.181.148', '1593628629'),
(15, 'Admin', 'Cargos da Equipe', '201.68.176.47', '1593628639'),
(16, 'Admin', 'Páginas do Site', '201.68.176.47', '1593628655'),
(17, 'Admin', 'Tema do Painel', '201.68.176.47', '1593628666'),
(18, 'Admin', 'Página Inicial', '187.113.181.148', '1593628704'),
(19, 'Admin', 'Categoria de Notícias', '201.68.176.47', '1593628811'),
(20, 'Admin', 'Slide', '187.113.181.148', '1593628826'),
(21, 'Admin', 'Página Inicial', '187.113.181.148', '1593628832'),
(22, 'Admin', 'Página Inicial', '187.113.181.148', '1593628909'),
(23, 'Admin', 'Canais', '187.113.181.148', '1593628921'),
(24, 'Admin', 'Membros da Equipe', '187.113.181.148', '1593628937'),
(25, 'Admin', 'Página Inicial', '187.113.181.148', '1593628960'),
(26, 'Admin', 'Página Inicial', '187.113.181.148', '1593629843'),
(27, 'Admin', 'Página Inicial', '187.113.181.148', '1593630605'),
(28, 'Admin', 'Postar Notícias', '187.113.181.148', '1593630609'),
(29, 'Admin', 'Postar Notícias', '187.113.181.148', '1593630635'),
(30, 'Admin', 'Página Inicial', '187.113.181.148', '1593630638'),
(31, 'Admin', 'Notícias Postadas', '187.113.181.148', '1593630666'),
(32, 'Admin', 'Notícias Postadas', '187.113.181.148', '1593630669'),
(33, 'Admin', 'Notícias Postadas', '187.113.181.148', '1593630675'),
(34, 'Admin', 'Canais', '187.113.181.148', '1593630754'),
(35, 'Admin', 'Canais', '187.113.181.148', '1593630774'),
(36, 'Admin', 'Canais', '187.113.181.148', '1593630784'),
(37, 'Admin', 'Canais', '187.113.181.148', '1593630788'),
(38, 'Admin', 'Canais', '187.113.181.148', '1593630797'),
(39, 'Admin', 'Canais', '187.113.181.148', '1593631049'),
(40, 'Admin', 'Canais', '187.113.181.148', '1593631070'),
(41, 'Admin', 'Categoria de Notícias', '201.68.176.47', '1593631729'),
(42, 'Admin', 'Membros da Equipe', '201.68.176.47', '1593631887'),
(43, 'Admin', 'Membros da Equipe', '201.68.176.47', '1593631953'),
(44, 'Admin', 'Canais', '187.113.181.148', '1593631956'),
(45, 'Admin', 'Canais', '187.113.181.148', '1593631962'),
(46, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631970'),
(47, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631972'),
(48, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631977'),
(49, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631982'),
(50, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631984'),
(51, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631992'),
(52, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593631996'),
(53, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632001'),
(54, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632005'),
(55, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632010'),
(56, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632014'),
(57, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632018'),
(58, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632022'),
(59, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632027'),
(60, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632031'),
(61, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632035'),
(62, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632039'),
(63, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632043'),
(64, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632047'),
(65, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632051'),
(66, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632055'),
(67, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632059'),
(68, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593632062'),
(69, 'Admin', 'Página Inicial', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632093'),
(70, 'Admin', 'Cargos da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632117'),
(71, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632130'),
(72, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632135'),
(73, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632146'),
(74, 'Admin', 'Membros da Equipe', '187.113.181.148', '1593632181'),
(75, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632231'),
(76, 'Admin', 'Aliados', '187.113.181.148', '1593632234'),
(77, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632241'),
(78, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632259'),
(79, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593632296'),
(80, 'Jumarock', 'Uploads', '191.136.145.207', '1593632311'),
(81, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593632318'),
(82, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632365'),
(83, 'Admin', 'Membros da Equipe', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632374'),
(84, 'Admin', 'Página Inicial', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593632388'),
(85, 'Admin', 'Aliados', '187.113.181.148', '1593632493'),
(86, 'Admin', 'Aliados', '187.113.181.148', '1593632519'),
(87, 'Admin', 'Aliados', '187.113.181.148', '1593632526'),
(88, 'Admin', 'Aliados', '187.113.181.148', '1593632560'),
(89, 'Admin', 'Aliados', '187.113.181.148', '1593632574'),
(90, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593632604'),
(91, 'Jumarock', 'Grupos Parceiros', '191.136.145.207', '1593632652'),
(92, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593632658'),
(93, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593632679'),
(94, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593632685'),
(95, 'Jumarock', 'Aliados', '191.136.145.207', '1593632740'),
(96, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593632744'),
(97, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593632789'),
(98, 'Jumarock', 'Áreas do Painel', '191.136.145.207', '1593632798'),
(99, 'Admin', 'Aliados', '187.113.181.148', '1593632923'),
(100, 'Admin', 'Aliados', '187.113.181.148', '1593632982'),
(101, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593633264'),
(102, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593633294'),
(103, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593633330'),
(104, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593633345'),
(105, 'Jumarock', 'Canais', '191.136.145.207', '1593633349'),
(106, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593633367'),
(107, 'Admin', 'Página Inicial', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633425'),
(108, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593633445'),
(109, 'Admin', 'Página Inicial', '187.113.181.148', '1593633449'),
(110, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593633452'),
(111, 'Admin', 'Configurações', '187.113.181.148', '1593633453'),
(112, 'Admin', 'Tema do Painel', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633459'),
(113, 'Jumarock', 'Uploads', '191.136.145.207', '1593633532'),
(114, 'Jumarock', 'Uploads', '191.136.145.207', '1593633574'),
(115, 'Jumarock', 'Uploads', '191.136.145.207', '1593633578'),
(116, 'Jumarock', 'Uploads', '191.136.145.207', '1593633654'),
(117, 'Admin', 'Áreas do Painel', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633664'),
(118, 'Jumarock', 'Uploads', '191.136.145.207', '1593633671'),
(119, 'Admin', 'Página Inicial', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633677'),
(120, 'Admin', 'Notificações', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633684'),
(121, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593633690'),
(122, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593633699'),
(123, 'Admin', 'Uploads', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593633705'),
(124, 'Admin', 'Página Inicial', '187.113.181.148', '1593633755'),
(125, 'Admin', 'Configurações de Rádio', '187.113.181.148', '1593633759'),
(126, 'Admin', 'Configurações de Rádio', '187.113.181.148', '1593633781'),
(127, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593633885'),
(128, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593633893'),
(129, 'Jumarock', 'Grupos Parceiros', '191.136.145.207', '1593633994'),
(130, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593634011'),
(131, 'Jumarock', 'Aliados', '191.136.145.207', '1593634020'),
(132, 'Jumarock', 'Slide', '191.136.145.207', '1593634088'),
(133, 'Admin', 'Notícias Postadas', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593634101'),
(134, 'Admin', 'Categoria de Notícias', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593634107'),
(135, 'Admin', 'Eventos Postados', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593634114'),
(136, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593634119'),
(137, 'Admin', 'Grupos Parceiros', '2804:431:b71d:d294:b48d:f980:2369:f6c', '1593634120'),
(138, 'Jumarock', 'Áreas do Painel', '191.136.145.207', '1593634155'),
(139, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593634256'),
(140, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593634267'),
(141, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593634325'),
(142, 'Jumarock', 'Uploads', '191.136.145.207', '1593634429'),
(143, 'Admin', 'Página Inicial', '187.113.181.148', '1593634443'),
(144, 'Admin', 'Página Inicial', '187.113.181.148', '1593634444'),
(145, 'Admin', 'Uploads', '187.113.181.148', '1593634447'),
(146, 'Admin', 'Canais', '187.113.181.148', '1593634486'),
(147, 'Admin', 'Canais', '187.113.181.148', '1593634496'),
(148, 'Admin', 'Canais', '187.113.181.148', '1593634500'),
(149, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593634544'),
(150, 'Admin', 'Permissões de Cargo', '187.113.181.148', '1593634547'),
(151, 'Admin', 'Página Inicial', '187.113.181.148', '1593634550'),
(152, 'Jumarock', 'Uploads', '191.136.145.207', '1593634561'),
(153, 'Admin', 'Uploads', '187.113.181.148', '1593634578'),
(154, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634586'),
(155, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634600'),
(156, 'Jumarock', 'Configurações', '191.136.145.207', '1593634606'),
(157, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593634612'),
(158, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593634620'),
(159, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593634628'),
(160, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593634638'),
(161, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634641'),
(162, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634650'),
(163, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634666'),
(164, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593634669'),
(165, 'Jumarock', 'Uploads', '191.136.145.207', '1593634672'),
(166, 'Jumarock', 'Notificações', '191.136.145.207', '1593634678'),
(167, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593634689'),
(168, 'Jumarock', 'Uploads', '191.136.145.207', '1593634757'),
(169, 'Jumarock', 'Uploads', '191.136.145.207', '1593634785'),
(170, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593634790'),
(171, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593635035'),
(172, 'Admin', 'Configurações de Rádio', '187.113.181.148', '1593635272'),
(173, 'Admin', 'Configurações de Rádio', '187.113.181.148', '1593635284'),
(174, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593636418'),
(175, 'Jumarock', 'Avisos', '191.136.145.207', '1593636427'),
(176, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593636440'),
(177, 'Jumarock', 'Uploads', '191.136.145.207', '1593636743'),
(178, 'Jumarock', 'Uploads', '191.136.145.207', '1593636767'),
(179, 'Jumarock', 'Uploads', '191.136.145.207', '1593636771'),
(180, 'Jumarock', 'Uploads', '191.136.145.207', '1593636776'),
(181, 'Jumarock', 'Uploads', '191.136.145.207', '1593636780'),
(182, 'Jumarock', 'Uploads', '191.136.145.207', '1593636793'),
(183, 'Jumarock', 'Uploads', '191.136.145.207', '1593636878'),
(184, 'Jumarock', 'Uploads', '191.136.145.207', '1593636892'),
(185, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593637144'),
(186, 'Jumarock', 'Uploads', '191.136.145.207', '1593637148'),
(187, 'Jumarock', 'Uploads', '191.136.145.207', '1593637288'),
(188, 'Jumarock', 'Uploads', '191.136.145.207', '1593637354'),
(189, 'Jumarock', 'Notificações', '191.136.145.207', '1593637716'),
(190, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593637718'),
(191, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593638113'),
(192, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593638141'),
(193, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593638163'),
(194, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638183'),
(195, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638187'),
(196, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638197'),
(197, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638211'),
(198, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638249'),
(199, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638267'),
(200, 'Admin', 'Página Inicial', '187.113.181.148', '1593638288'),
(201, 'Admin', 'Eventos Postados', '187.113.181.148', '1593638299'),
(202, 'Admin', 'Página Inicial', '187.113.181.148', '1593638305'),
(203, 'Jumarock', 'Uploads', '191.136.145.207', '1593638515'),
(204, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638581'),
(205, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638586'),
(206, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593638639'),
(207, 'Admin', 'Página Inicial', '187.113.181.148', '1593638689'),
(208, 'Admin', 'Página Inicial', '187.113.181.148', '1593638690'),
(209, 'Jumarock', 'Uploads', '191.136.145.207', '1593641591'),
(210, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593641593'),
(211, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593641610'),
(212, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593641620'),
(213, 'Jumarock', 'Slide', '191.136.145.207', '1593641641'),
(214, 'Jumarock', 'Slide', '191.136.145.207', '1593641655'),
(215, 'Jumarock', 'Slide', '191.136.145.207', '1593641776'),
(216, 'Jumarock', 'Slide', '191.136.145.207', '1593641806'),
(217, 'Jumarock', 'Slide', '191.136.145.207', '1593641816'),
(218, 'Admin', 'Página Inicial', '186.212.236.193', '1593648505'),
(219, 'Admin', 'Páginas do Site', '186.212.236.193', '1593648512'),
(220, 'Admin', 'Páginas do Site', '186.212.236.193', '1593648530'),
(221, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649354'),
(222, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649486'),
(223, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649663'),
(224, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649742'),
(225, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649763'),
(226, 'Admin', 'Páginas do Site', '186.212.236.193', '1593649999'),
(227, 'Admin', 'Páginas do Site', '186.212.236.193', '1593650007'),
(228, 'Admin', 'Páginas do Site', '186.212.236.193', '1593650179'),
(229, 'Admin', 'Páginas do Site', '186.212.236.193', '1593650206'),
(230, 'Admin', 'Postar Notícias', '186.212.236.193', '1593652765'),
(231, 'Admin', 'Canais', '186.212.236.193', '1593653219'),
(232, 'Admin', 'Canais', '186.212.236.193', '1593653238'),
(233, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653243'),
(234, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653249'),
(235, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653254'),
(236, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653259'),
(237, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653261'),
(238, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653266'),
(239, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653271'),
(240, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593653275'),
(241, 'Admin', 'Pojetos', '186.212.236.193', '1593653281'),
(242, 'Admin', 'Canais', '186.212.236.193', '1593653294'),
(243, 'Admin', 'Canais', '186.212.236.193', '1593653303'),
(244, 'Admin', 'Canais', '186.212.236.193', '1593653309'),
(245, 'Admin', 'Projetos', '186.212.236.193', '1593653428'),
(246, 'Admin', 'Postar Notícias', '186.212.236.193', '1593653512'),
(247, 'Admin', 'Postar Eventos', '186.212.236.193', '1593653517'),
(248, 'Admin', 'Projetos', '186.212.236.193', '1593653523'),
(249, 'Admin', 'Projetos', '186.212.236.193', '1593653738'),
(250, 'Admin', 'Projetos', '186.212.236.193', '1593654222'),
(251, 'Admin', 'Projetos', '186.212.236.193', '1593654278'),
(252, 'Admin', 'Projetos', '186.212.236.193', '1593654344'),
(253, 'Admin', 'Projetos', '186.212.236.193', '1593654786'),
(254, 'Admin', 'Projetos', '186.212.236.193', '1593654909'),
(255, 'Admin', 'Projetos', '186.212.236.193', '1593654948'),
(256, 'Admin', 'Página Inicial', '186.212.236.193', '1593655326'),
(257, 'Admin', 'Canais', '186.212.236.193', '1593655330'),
(258, 'Admin', 'Canais', '186.212.236.193', '1593655347'),
(259, 'Admin', 'Canais', '186.212.236.193', '1593655364'),
(260, 'Admin', 'Canais', '186.212.236.193', '1593655379'),
(261, 'Admin', 'Canais', '186.212.236.193', '1593655384'),
(262, 'Admin', 'Canais', '186.212.236.193', '1593655392'),
(263, 'Admin', 'Canais', '186.212.236.193', '1593655404'),
(264, 'Admin', 'Página Inicial', '186.212.236.193', '1593655408'),
(265, 'Admin', 'Postar projetos', '186.212.236.193', '1593655455'),
(266, 'Admin', 'Canais', '186.212.236.193', '1593655475'),
(267, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655479'),
(268, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655481'),
(269, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655486'),
(270, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655491'),
(271, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655493'),
(272, 'Admin', 'Permissões de Cargo', '186.212.236.193', '1593655497'),
(273, 'Admin', 'Página Inicial', '186.212.236.193', '1593655499'),
(274, 'Admin', 'Membros da Equipe', '186.212.236.193', '1593655505'),
(275, 'Admin', 'Projetos', '186.212.236.193', '1593655686'),
(276, 'Admin', 'Projetos', '186.212.236.193', '1593655714'),
(277, 'Admin', 'Projetos', '186.212.236.193', '1593655725'),
(278, 'Admin', 'Projetos', '186.212.236.193', '1593655760'),
(279, 'Admin', 'Projetos', '186.212.236.193', '1593655772'),
(280, 'Admin', 'Projetos', '186.212.236.193', '1593655798'),
(281, 'Admin', 'Projetos', '186.212.236.193', '1593655828'),
(282, 'Admin', 'Projetos', '186.212.236.193', '1593655835'),
(283, 'Admin', 'Aliados', '186.212.236.193', '1593656640'),
(284, 'Admin', 'Aliados', '186.212.236.193', '1593657288'),
(285, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593694022'),
(286, 'Jumarock', 'Uploads', '191.136.145.207', '1593694026'),
(287, 'Jumarock', 'Uploads', '191.136.145.207', '1593694039'),
(288, 'Jumarock', 'Uploads', '191.136.145.207', '1593694058'),
(289, 'Jumarock', 'Slide', '191.136.145.207', '1593694065'),
(290, 'Jumarock', 'Slide', '191.136.145.207', '1593694075'),
(291, 'Jumarock', 'Slide', '191.136.145.207', '1593694090'),
(292, 'Jumarock', 'Aliados', '191.136.145.207', '1593694101'),
(293, 'Jumarock', 'Uploads', '191.136.145.207', '1593695027'),
(294, 'Jumarock', 'Projetos', '191.136.145.207', '1593695037'),
(295, 'Jumarock', 'Projetos', '191.136.145.207', '1593695043'),
(296, 'Jumarock', 'Projetos', '191.136.145.207', '1593695057'),
(297, 'Jumarock', 'Projetos', '191.136.145.207', '1593695075'),
(298, 'Jumarock', 'Projetos', '191.136.145.207', '1593695090'),
(299, 'Jumarock', 'Projetos', '191.136.145.207', '1593695094'),
(300, 'Jumarock', 'Projetos', '191.136.145.207', '1593695105'),
(301, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593695111'),
(302, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593695161'),
(303, 'Jumarock', 'Uploads', '191.136.145.207', '1593695178'),
(304, 'Jumarock', 'Uploads', '191.136.145.207', '1593695212'),
(305, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593695223'),
(306, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593695268'),
(307, 'Jumarock', 'Projetos', '191.136.145.207', '1593695309'),
(308, 'Jumarock', 'Postar projetos', '191.136.145.207', '1593695317'),
(309, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593695328'),
(310, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593695340'),
(311, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593695596'),
(312, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593695606'),
(313, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593695618'),
(314, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593695631'),
(315, 'Jumarock', 'Slide', '191.136.145.207', '1593695649'),
(316, 'Jumarock', 'Slide', '191.136.145.207', '1593695710'),
(317, 'Jumarock', 'Avisos', '191.136.145.207', '1593695869'),
(318, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593695878'),
(319, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593695891'),
(320, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593695894'),
(321, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593695898'),
(322, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593695904'),
(323, 'Jumarock', 'Uploads', '191.136.145.207', '1593696225'),
(324, 'Jumarock', 'Aliados', '191.136.145.207', '1593696349'),
(325, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593696737'),
(326, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593696756'),
(327, 'Jumarock', 'Uploads', '191.136.145.207', '1593696905'),
(328, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593696921'),
(329, 'Admin', 'Página Inicial', '186.212.236.193', '1593696930'),
(330, 'Admin', 'Sites Parceiros', '186.212.236.193', '1593696939'),
(331, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593696944'),
(332, 'Jumarock', 'Áreas do Painel', '191.136.145.207', '1593696958'),
(333, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593697044'),
(334, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593697076'),
(335, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593697111'),
(336, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593697169'),
(337, 'Jumarock', 'Áreas do Painel', '191.136.145.207', '1593697524'),
(338, 'Jumarock', 'Uploads', '191.136.145.207', '1593698383'),
(339, 'Jumarock', 'Slide', '191.136.145.207', '1593698394'),
(340, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593722578'),
(341, 'Admin', 'Página Inicial', '201.13.62.231', '1593722627'),
(342, 'Admin', 'Slide', '201.13.62.231', '1593722640'),
(343, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593722656'),
(344, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593722658'),
(345, 'Admin', 'Página Inicial', '201.13.62.231', '1593722661'),
(346, 'Jumarock', 'Configurações', '191.136.145.207', '1593722666'),
(347, 'Admin', 'Configurações', '201.13.62.231', '1593722675'),
(348, 'Jumarock', 'Notificações', '191.136.145.207', '1593722683'),
(349, 'Admin', 'Notificações', '201.13.62.231', '1593722687'),
(350, 'Jumarock', 'Uploads', '191.136.145.207', '1593722689'),
(351, 'Admin', 'Uploads', '201.13.62.231', '1593722702'),
(352, 'Jumarock', 'Uploads', '191.136.145.207', '1593722785'),
(353, 'Jumarock', 'Uploads', '191.136.145.207', '1593722797'),
(354, 'Jumarock', 'Uploads', '191.136.145.207', '1593722800'),
(355, 'Jumarock', 'Uploads', '191.136.145.207', '1593722803'),
(356, 'Jumarock', 'Uploads', '191.136.145.207', '1593722809'),
(357, 'Admin', 'Uploads', '201.13.62.231', '1593722812'),
(358, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593722868'),
(359, 'Admin', 'Postar Notícias', '201.13.62.231', '1593722875'),
(360, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593722971'),
(361, 'Admin', 'Postar Notícias', '201.13.62.231', '1593722996'),
(362, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723051'),
(363, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593723053'),
(364, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723065'),
(365, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593723070'),
(366, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723130'),
(367, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723132'),
(368, 'Jumarock', 'Aliados', '191.136.145.207', '1593723200'),
(369, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723204'),
(370, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593723207'),
(371, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723212'),
(372, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593723222'),
(373, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593723233'),
(374, 'Jumarock', 'Aliados', '191.136.145.207', '1593723255'),
(375, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723261'),
(376, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723264'),
(377, 'Jumarock', 'Aliados', '191.136.145.207', '1593723267'),
(378, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593723273'),
(379, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593723278'),
(380, 'Jumarock', 'Postar projetos', '191.136.145.207', '1593723281'),
(381, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593723284'),
(382, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593723291'),
(383, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723323'),
(384, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723326'),
(385, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723330'),
(386, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723335'),
(387, 'Admin', 'Página Inicial', '201.13.62.231', '1593723353'),
(388, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593723354'),
(389, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593723380'),
(390, 'Admin', 'Postar Eventos', '201.13.62.231', '1593723400'),
(391, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723428'),
(392, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723431'),
(393, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723434'),
(394, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723437'),
(395, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723439'),
(396, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593723444'),
(397, 'Admin', 'Uploads', '201.13.62.231', '1593723447'),
(398, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723452'),
(399, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723455'),
(400, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723457'),
(401, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723458'),
(402, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723460'),
(403, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723463'),
(404, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723466'),
(405, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723469'),
(406, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593723472'),
(407, 'Admin', 'Uploads', '201.13.62.231', '1593723498'),
(408, 'Admin', 'Postar Eventos', '201.13.62.231', '1593723528'),
(409, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723529'),
(410, 'Admin', 'Eventos Postados', '201.13.62.231', '1593723539'),
(411, 'Admin', 'Eventos Postados', '201.13.62.231', '1593723543'),
(412, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593723548'),
(413, 'Jumarock', 'Postar projetos', '191.136.145.207', '1593723584'),
(414, 'Jumarock', 'Aliados', '191.136.145.207', '1593723602'),
(415, 'Admin', 'Aliados', '201.13.62.231', '1593723613'),
(416, 'Jumarock', 'Uploads', '191.136.145.207', '1593723792'),
(417, 'Jumarock', 'Uploads', '191.136.145.207', '1593723805'),
(418, 'Admin', 'Uploads', '201.13.62.231', '1593723829'),
(419, 'Jumarock', 'Aliados', '191.136.145.207', '1593723830'),
(420, 'Jumarock', 'Aliados', '191.136.145.207', '1593723837'),
(421, 'Admin', 'Aliados', '201.13.62.231', '1593723915'),
(422, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724023'),
(423, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724038'),
(424, 'Jumarock', 'Categoria de Notícias', '191.136.145.207', '1593724089'),
(425, 'Admin', 'Categoria de Notícias', '201.13.62.231', '1593724120'),
(426, 'Jumarock', 'Grupos Parceiros', '191.136.145.207', '1593724155'),
(427, 'Admin', 'Grupos Parceiros', '201.13.62.231', '1593724160'),
(428, 'Jumarock', 'Uploads', '191.136.145.207', '1593724251'),
(429, 'Jumarock', 'Uploads', '191.136.145.207', '1593724270'),
(430, 'Admin', 'Uploads', '201.13.62.231', '1593724291'),
(431, 'Jumarock', 'Grupos Parceiros', '191.136.145.207', '1593724369'),
(432, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593724422'),
(433, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593724429'),
(434, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724434'),
(435, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724450'),
(436, 'Admin', 'Postar Notícias', '201.13.62.231', '1593724453'),
(437, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724457'),
(438, 'Admin', 'Uploads', '201.13.62.231', '1593724480'),
(439, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724500'),
(440, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724503'),
(441, 'Admin', 'Postar Notícias', '201.13.62.231', '1593724510'),
(442, 'Jumarock', 'Aliados', '191.136.145.207', '1593724518'),
(443, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724522'),
(444, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724526'),
(445, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593724529'),
(446, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593724539'),
(447, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593724541'),
(448, 'Jumarock', 'Eventos Postados', '191.136.145.207', '1593724545'),
(449, 'Jumarock', 'Postar Eventos', '191.136.145.207', '1593724549'),
(450, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593724552'),
(451, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593724554'),
(452, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593724555'),
(453, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593724556'),
(454, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593724557'),
(455, 'Admin', 'Notícias Postadas', '201.13.62.231', '1593724567'),
(456, 'Jumarock', 'Postar Notícias', '191.136.145.207', '1593724604'),
(457, 'Jumarock', 'Notícias Postadas', '191.136.145.207', '1593724606'),
(458, 'Admin', 'Postar Eventos', '201.13.62.231', '1593724615'),
(459, 'Admin', 'Eventos Postados', '201.13.62.231', '1593724623'),
(460, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593724660'),
(461, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593724663'),
(462, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593724672'),
(463, 'Admin', 'Postar Eventos', '201.13.62.231', '1593724907'),
(464, 'Admin', 'Página Inicial', '201.13.62.231', '1593724966'),
(465, 'Admin', 'Uploads', '201.13.62.231', '1593724972'),
(466, 'Admin', 'Postar Eventos', '201.13.62.231', '1593725004'),
(467, 'Admin', 'Eventos Postados', '201.13.62.231', '1593725011'),
(468, 'Admin', 'Eventos Postados', '201.13.62.231', '1593725018'),
(469, 'Admin', 'Eventos Postados', '201.13.62.231', '1593725026'),
(470, 'Jumarock', 'Projetos', '191.136.145.207', '1593725078'),
(471, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593725121'),
(472, 'Admin', 'Sites Parceiros', '201.13.62.231', '1593725146'),
(473, 'Jumarock', 'Uploads', '191.136.145.207', '1593725314'),
(474, 'Jumarock', 'Uploads', '191.136.145.207', '1593725320'),
(475, 'Admin', 'Página Inicial', '201.13.62.231', '1593725339'),
(476, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593725344'),
(477, 'Admin', 'Uploads', '201.13.62.231', '1593725346'),
(478, 'Admin', 'Sites Parceiros', '201.13.62.231', '1593725387'),
(479, 'Jumarock', 'Sites Parceiros', '191.136.145.207', '1593725397'),
(480, 'Jumarock', 'Avisos', '191.136.145.207', '1593725421'),
(481, 'Admin', 'Avisos', '201.13.62.231', '1593725425'),
(482, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593725435'),
(483, 'Jumarock', 'Avisos', '191.136.145.207', '1593725448'),
(484, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593725468'),
(485, 'Jumarock', 'Avisos', '191.136.145.207', '1593725471'),
(486, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593725476'),
(487, 'Admin', 'Avisos', '201.13.62.231', '1593725499'),
(488, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593725506'),
(489, 'Jumarock', 'Banir por IP', '191.136.145.207', '1593725532'),
(490, 'Jumarock', 'Canais', '191.136.145.207', '1593725538'),
(491, 'Jumarock', 'Cargos da Equipe', '191.136.145.207', '1593725570'),
(492, 'Jumarock', 'Configurações de Rádio', '191.136.145.207', '1593725577'),
(493, 'Jumarock', 'Membros da Equipe', '191.136.145.207', '1593725586'),
(494, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593725595'),
(495, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593725607'),
(496, 'Admin', 'Páginas do Site', '201.13.62.231', '1593725612'),
(497, 'Jumarock', 'Páginas do Site', '191.136.145.207', '1593725613'),
(498, 'Jumarock', 'Permissões de Cargo', '191.136.145.207', '1593725623'),
(499, 'Jumarock', 'Slide', '191.136.145.207', '1593725648'),
(500, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593725761'),
(501, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593725811'),
(502, 'Admin', 'Páginas do Site', '201.13.62.231', '1593731062'),
(503, 'Jumarock', 'Página Inicial', '191.136.145.207', '1593793703'),
(504, 'Jumarock', 'Uploads', '191.136.145.207', '1593793714'),
(505, 'Jumarock', 'Uploads', '191.136.145.207', '1593793740'),
(506, 'Jumarock', 'Tema do Painel', '191.136.145.207', '1593793777'),
(507, 'Jumarock', 'Slide', '191.136.145.207', '1593793781'),
(508, 'Jumarock', 'Slide', '191.136.145.207', '1593793822'),
(509, 'Jumarock', 'Uploads', '191.136.145.207', '1593882475'),
(510, 'Jumarock', 'Página Inicial', '191.136.150.198', '1594069915'),
(511, 'Jumarock', 'Grupos Parceiros', '191.136.150.198', '1594069925'),
(512, 'Jumarock', 'Uploads', '191.136.150.198', '1594069933'),
(513, 'Jumarock', 'Grupos Parceiros', '191.136.150.198', '1594069942'),
(514, 'Jumarock', 'Grupos Parceiros', '191.136.150.198', '1594069948'),
(515, 'Jumarock', 'Grupos Parceiros', '191.136.150.198', '1594070178'),
(516, 'Jumarock', 'Página Inicial', '191.136.150.198', '1594079008'),
(517, 'Admin', 'Página Inicial', '177.33.137.122', '1594079048'),
(518, 'Admin', 'Página Inicial', '177.33.137.122', '1594079603'),
(519, 'Admin', 'Página Inicial', '179.186.43.204', '1594096624'),
(520, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594096632'),
(521, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594096738'),
(522, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594096790'),
(523, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594096866'),
(524, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594096874'),
(525, 'Jumarock', 'Uploads', '191.136.150.198', '1594096907'),
(526, 'Jumarock', 'Página Inicial', '191.136.150.198', '1594096913'),
(527, 'Admin', 'Grupos Parceiros', '179.186.43.204', '1594097030'),
(528, 'Admin', 'Página Inicial', '179.186.43.204', '1594097033'),
(529, 'Admin', 'Página Inicial', '179.162.211.163', '1594144909'),
(530, 'Admin', 'Avisos', '179.162.211.163', '1594144920'),
(531, 'Admin', 'Páginas do Site', '179.162.211.163', '1594144937'),
(532, 'Admin', 'Páginas do Site', '179.162.211.163', '1594144945'),
(533, 'Admin', 'Página Inicial', '179.162.211.163', '1594145550'),
(534, 'Admin', 'Página Inicial', '177.206.38.197', '1594161169'),
(535, 'Admin', 'Categoria de Notícias', '177.206.38.197', '1594161187'),
(536, 'Admin', 'Categoria de Notícias', '177.206.38.197', '1594161705'),
(537, 'Admin', 'Categoria de Notícias', '177.206.38.197', '1594161726'),
(538, 'Admin', 'Páginas do Site', '177.206.38.197', '1594162897'),
(539, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163049'),
(540, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163092'),
(541, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163143'),
(542, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163505'),
(543, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163513'),
(544, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163670'),
(545, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163737'),
(546, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163755'),
(547, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163774'),
(548, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163781'),
(549, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163799'),
(550, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163806'),
(551, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163810'),
(552, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163898'),
(553, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163904'),
(554, 'Admin', 'Páginas do Site', '177.206.38.197', '1594163957'),
(555, 'Jumarock', 'Página Inicial', '191.136.132.54', '1594164367'),
(556, 'Jumarock', 'Configurações de Rádio', '191.136.132.54', '1594164455'),
(557, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164458'),
(558, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164467'),
(559, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164473'),
(560, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164478'),
(561, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164484'),
(562, 'Jumarock', 'Páginas do Site', '191.136.132.54', '1594164566'),
(563, 'Jumarock', 'Uploads', '191.136.132.54', '1594164590'),
(564, 'Jumarock', 'Uploads', '191.136.132.54', '1594164628'),
(565, 'Jumarock', 'Uploads', '191.136.132.54', '1594164645');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_logs_presenca`
--

CREATE TABLE `aa_logs_presenca` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_notificacao`
--

CREATE TABLE `aa_notificacao` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `visto` enum('true','false') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_notificacao`
--

INSERT INTO `aa_notificacao` (`id`, `usuario`, `texto`, `time`, `visto`) VALUES
(1, 'Jumarock', 'Bem-vindo ao KPanel!', '1593631951', 'true'),
(2, 'Caroline Lopes', 'Bem-vindo ao KPanel!', '1593632362', 'false');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_pedidos`
--

CREATE TABLE `aa_pedidos` (
  `id` int(11) NOT NULL,
  `locutor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mensagem` text CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_permissao`
--

CREATE TABLE `aa_permissao` (
  `per_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_permissao`
--

INSERT INTO `aa_permissao` (`per_id`, `cargo_id`, `canal_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(3, 1, 3),
(11, 1, 10),
(12, 1, 11),
(13, 1, 12),
(14, 1, 13),
(15, 1, 14),
(18, 1, 15),
(19, 2, 2),
(81, 2, 1),
(21, 1, 16),
(22, 1, 17),
(23, 1, 18),
(24, 1, 19),
(25, 1, 20),
(26, 1, 21),
(27, 1, 23),
(28, 1, 25),
(29, 1, 26),
(30, 1, 27),
(31, 1, 22),
(32, 1, 28),
(33, 1, 29),
(34, 1, 30),
(35, 1, 31),
(36, 1, 32),
(37, 1, 33),
(38, 1, 34),
(39, 1, 35),
(40, 1, 36),
(41, 1, 37),
(42, 1, 38),
(43, 1, 39),
(44, 1, 40),
(45, 1, 41),
(46, 1, 42),
(47, 1, 43),
(48, 1, 44),
(49, 1, 45),
(50, 1, 46),
(51, 1, 47),
(52, 1, 48),
(53, 1, 49),
(54, 1, 50),
(55, 1, 51),
(56, 1, 52),
(57, 1, 53),
(58, 1, 54),
(59, 1, 55),
(60, 1, 56),
(61, 1, 57),
(62, 1, 58),
(63, 1, 59),
(64, 1, 60),
(65, 1, 61),
(66, 1, 62),
(67, 1, 63),
(68, 1, 64),
(69, 1, 65),
(70, 1, 66),
(71, 1, 67),
(72, 3, 1),
(73, 3, 9),
(88, 3, 11),
(90, 3, 21),
(91, 3, 38),
(79, 1, 68),
(80, 1, 69),
(82, 2, 3),
(83, 2, 4),
(92, 3, 20),
(86, 3, 3),
(93, 3, 39),
(94, 3, 40),
(95, 3, 27),
(96, 3, 26),
(97, 3, 17),
(98, 3, 69),
(99, 3, 16),
(100, 3, 42),
(101, 3, 41),
(102, 3, 43),
(103, 3, 44),
(104, 3, 45),
(106, 3, 23),
(107, 3, 67),
(108, 3, 66),
(109, 3, 65),
(110, 2, 69),
(111, 2, 6),
(112, 2, 7),
(113, 2, 16),
(114, 2, 23),
(115, 2, 9),
(116, 2, 11),
(117, 2, 17),
(118, 2, 18),
(119, 2, 19),
(120, 2, 20),
(121, 2, 21),
(122, 2, 25),
(123, 2, 27),
(124, 2, 38),
(125, 2, 39),
(472, 4, 1),
(127, 4, 3),
(128, 4, 6),
(129, 4, 7),
(130, 4, 9),
(131, 4, 10),
(132, 4, 11),
(133, 4, 19),
(134, 4, 21),
(135, 4, 25),
(136, 4, 28),
(137, 4, 29),
(138, 4, 23),
(139, 4, 30),
(140, 4, 31),
(141, 4, 32),
(142, 4, 33),
(143, 4, 34),
(144, 4, 36),
(145, 4, 38),
(146, 4, 39),
(147, 4, 40),
(148, 4, 47),
(149, 4, 49),
(150, 4, 48),
(151, 4, 50),
(152, 4, 51),
(153, 4, 52),
(154, 4, 53),
(155, 4, 54),
(156, 4, 55),
(157, 4, 57),
(158, 4, 58),
(159, 4, 59),
(160, 4, 60),
(161, 4, 56),
(162, 4, 62),
(163, 4, 61),
(164, 4, 63),
(165, 4, 64),
(166, 4, 69),
(167, 8, 3),
(168, 7, 1),
(169, 8, 1),
(170, 8, 6),
(171, 8, 7),
(172, 8, 9),
(173, 8, 10),
(174, 8, 11),
(175, 8, 21),
(176, 8, 23),
(177, 7, 3),
(178, 4, 66),
(179, 7, 69),
(180, 8, 28),
(181, 8, 29),
(182, 8, 30),
(183, 8, 31),
(184, 8, 32),
(185, 8, 34),
(186, 8, 38),
(187, 8, 40),
(188, 8, 39),
(189, 8, 33),
(190, 8, 47),
(191, 8, 48),
(192, 8, 49),
(193, 8, 50),
(194, 8, 51),
(195, 8, 63),
(196, 8, 64),
(197, 8, 62),
(198, 8, 61),
(199, 8, 69),
(200, 8, 60),
(201, 8, 59),
(202, 8, 58),
(203, 8, 57),
(204, 7, 16),
(205, 8, 56),
(206, 8, 55),
(207, 8, 55),
(208, 8, 55),
(209, 8, 54),
(210, 8, 52),
(211, 8, 53),
(212, 8, 36),
(213, 11, 1),
(214, 11, 6),
(215, 11, 7),
(216, 11, 69),
(217, 11, 9),
(218, 11, 10),
(219, 11, 11),
(220, 11, 38),
(398, 11, 23),
(222, 11, 47),
(223, 11, 48),
(224, 11, 49),
(225, 11, 50),
(226, 11, 51),
(227, 11, 52),
(228, 11, 53),
(229, 11, 55),
(230, 7, 9),
(231, 11, 56),
(232, 11, 57),
(233, 11, 57),
(234, 11, 58),
(235, 11, 59),
(236, 11, 60),
(237, 11, 62),
(238, 11, 28),
(239, 11, 29),
(240, 7, 11),
(241, 11, 30),
(242, 11, 31),
(243, 11, 32),
(244, 11, 33),
(245, 11, 36),
(246, 11, 40),
(247, 19, 1),
(248, 19, 7),
(249, 19, 10),
(250, 19, 9),
(251, 19, 57),
(252, 19, 58),
(253, 19, 59),
(254, 19, 60),
(255, 19, 62),
(256, 19, 61),
(257, 20, 6),
(258, 20, 9),
(259, 20, 1),
(260, 20, 10),
(261, 20, 47),
(262, 20, 48),
(263, 20, 48),
(264, 20, 49),
(265, 20, 52),
(266, 20, 55),
(267, 20, 50),
(268, 20, 51),
(269, 20, 53),
(270, 20, 56),
(271, 2, 10),
(272, 2, 22),
(273, 2, 47),
(274, 2, 48),
(275, 2, 49),
(276, 2, 50),
(277, 2, 51),
(278, 2, 52),
(279, 2, 53),
(280, 2, 54),
(281, 2, 55),
(282, 2, 56),
(283, 2, 57),
(284, 2, 58),
(285, 2, 59),
(286, 2, 60),
(287, 2, 61),
(288, 2, 62),
(289, 2, 41),
(290, 2, 42),
(291, 2, 43),
(292, 2, 44),
(293, 2, 45),
(294, 2, 63),
(295, 2, 64),
(296, 2, 65),
(297, 2, 66),
(298, 2, 67),
(299, 2, 26),
(300, 2, 28),
(301, 2, 29),
(302, 2, 30),
(303, 2, 31),
(304, 2, 32),
(305, 2, 33),
(306, 2, 34),
(307, 2, 35),
(308, 2, 36),
(309, 2, 37),
(310, 2, 40),
(311, 5, 1),
(312, 5, 3),
(313, 5, 6),
(314, 5, 69),
(315, 5, 23),
(316, 3, 19),
(317, 5, 9),
(318, 5, 10),
(319, 5, 11),
(320, 5, 18),
(321, 5, 19),
(322, 5, 21),
(323, 5, 22),
(324, 5, 25),
(325, 5, 38),
(326, 5, 39),
(327, 5, 56),
(328, 5, 54),
(329, 5, 63),
(330, 5, 64),
(331, 5, 34),
(332, 5, 40),
(333, 5, 35),
(334, 5, 37),
(335, 5, 33),
(336, 5, 66),
(337, 6, 1),
(338, 6, 3),
(339, 6, 23),
(340, 6, 40),
(341, 6, 9),
(342, 6, 10),
(343, 6, 66),
(344, 6, 38),
(345, 6, 69),
(346, 7, 23),
(347, 7, 21),
(348, 7, 27),
(349, 7, 38),
(350, 7, 39),
(351, 7, 41),
(352, 7, 67),
(353, 7, 65),
(354, 7, 26),
(355, 7, 40),
(356, 7, 43),
(357, 7, 42),
(358, 7, 44),
(359, 7, 45),
(360, 9, 1),
(361, 9, 3),
(362, 9, 23),
(363, 9, 10),
(364, 9, 6),
(365, 9, 69),
(366, 9, 9),
(367, 9, 11),
(368, 9, 18),
(369, 9, 38),
(370, 9, 40),
(371, 9, 39),
(372, 9, 54),
(373, 9, 63),
(374, 9, 64),
(375, 9, 21),
(376, 9, 35),
(377, 9, 37),
(378, 9, 56),
(379, 9, 33),
(380, 10, 1),
(381, 10, 16),
(382, 10, 69),
(383, 10, 23),
(384, 10, 9),
(385, 10, 11),
(386, 10, 3),
(387, 10, 27),
(388, 10, 38),
(389, 10, 26),
(390, 10, 40),
(391, 10, 41),
(392, 10, 42),
(393, 10, 43),
(394, 10, 44),
(395, 10, 45),
(396, 10, 65),
(397, 11, 3),
(399, 11, 64),
(400, 12, 1),
(401, 12, 3),
(402, 12, 69),
(403, 12, 23),
(404, 12, 11),
(405, 12, 9),
(406, 12, 10),
(407, 12, 37),
(408, 12, 33),
(409, 12, 64),
(410, 12, 38),
(412, 12, 40),
(413, 18, 1),
(414, 18, 16),
(415, 18, 9),
(416, 18, 41),
(417, 18, 42),
(418, 18, 43),
(419, 18, 44),
(420, 18, 45),
(421, 22, 1),
(422, 22, 9),
(423, 22, 10),
(424, 21, 1),
(425, 21, 9),
(426, 21, 10),
(427, 21, 7),
(428, 21, 58),
(429, 23, 1),
(430, 23, 9),
(431, 24, 1),
(432, 24, 9),
(433, 24, 3),
(434, 24, 27),
(435, 24, 16),
(437, 24, 44),
(438, 25, 1),
(439, 25, 9),
(440, 1, 71),
(441, 2, 71),
(442, 4, 71),
(443, 8, 71),
(444, 11, 71),
(445, 20, 71),
(446, 26, 1),
(447, 26, 16),
(448, 26, 27),
(449, 26, 41),
(450, 26, 67),
(451, 26, 23),
(452, 26, 43),
(453, 26, 42),
(454, 26, 9),
(455, 1, 72),
(456, 2, 72),
(457, 3, 72),
(458, 7, 72),
(459, 10, 72),
(460, 18, 72),
(461, 1, 73),
(462, 1, 74),
(463, 1, 75),
(464, 1, 76),
(475, 1, 77),
(466, 1, 78),
(467, 1, 80),
(468, 1, 81),
(469, 1, 79),
(470, 1, 82),
(471, 1, 83),
(473, 1, 84),
(474, 19, 84),
(476, 1, 86),
(477, 4, 89),
(478, 4, 74),
(479, 1, 89),
(480, 8, 89),
(481, 8, 4),
(482, 8, 74),
(483, 11, 74),
(484, 11, 89),
(485, 1, 90),
(486, 4, 90),
(487, 2, 89),
(488, 8, 90),
(489, 11, 90),
(490, 2, 90),
(491, 6, 86),
(492, 2, 86),
(493, 3, 86),
(494, 4, 86),
(495, 5, 86),
(496, 7, 86),
(497, 8, 86),
(498, 9, 86),
(499, 10, 86),
(500, 11, 86),
(501, 12, 86),
(502, 18, 86),
(503, 19, 86),
(504, 20, 86),
(505, 21, 86),
(506, 22, 86),
(507, 23, 86),
(508, 24, 86),
(509, 25, 86),
(510, 26, 86),
(511, 1, 91),
(512, 2, 91),
(513, 4, 91),
(514, 8, 91),
(515, 11, 91),
(516, 20, 91),
(517, 1, 92),
(518, 3, 92),
(519, 4, 92),
(520, 5, 92),
(521, 1, 93),
(522, 4, 93),
(523, 8, 93),
(524, 11, 93),
(525, 20, 5),
(526, 20, 93),
(527, 1, 94),
(528, 6, 7),
(529, 6, 4),
(530, 6, 11),
(531, 6, 12),
(532, 6, 14),
(533, 6, 13),
(534, 6, 18),
(535, 6, 19),
(536, 6, 73),
(537, 6, 76),
(538, 6, 28),
(539, 6, 29),
(540, 6, 30),
(541, 6, 35),
(542, 6, 37),
(543, 6, 94),
(544, 6, 57),
(545, 6, 58),
(546, 1, 95),
(547, 6, 5),
(548, 6, 20),
(549, 6, 95),
(550, 6, 96),
(551, 1, 96);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_presenca`
--

CREATE TABLE `aa_presenca` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_presenca_marcadas`
--

CREATE TABLE `aa_presenca_marcadas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_quarto_dj`
--

CREATE TABLE `aa_quarto_dj` (
  `url` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_quarto_dj`
--

INSERT INTO `aa_quarto_dj` (`url`) VALUES
('123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_tickets`
--

CREATE TABLE `aa_tickets` (
  `id` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `assunto` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mensagem` text CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false','answ','sorted') CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_tickets_resp`
--

CREATE TABLE `aa_tickets_resp` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_uploads`
--

CREATE TABLE `aa_uploads` (
  `id` int(11) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_uploads`
--

INSERT INTO `aa_uploads` (`id`, `url`, `usuario`) VALUES
(1, 'upload-394d7cec466692cbb6e9ad47200e239e.png', 'Jumarock'),
(2, 'upload-40644dde034d0aa1e3125d95d6c0739f.jpg', 'Jumarock'),
(3, 'upload-331bf6ee0e539c241ece0c0ebf7c342c.PNG', 'Jumarock'),
(4, 'upload-1ff142f008d20515d0e1a74c3714614f.png', 'Jumarock'),
(5, 'upload-03b71be9fc992aa8fe87be77d7d3bbaa.png', 'Jumarock'),
(6, 'upload-090112dce2de833a61fa8e4ea0b66624.jpg', 'Jumarock'),
(7, 'upload-7eb8a5744f71e275487f5425460204b9.gif', 'Jumarock'),
(8, 'upload-1f9a5096347c24cc282cd49572c83a64.png', 'Admin'),
(9, 'upload-8a8a923977a427e0c7517ab83f750707.jpg', 'Admin'),
(10, 'upload-12c880609dd9007deb6d4d8a1111a965.png', 'Jumarock'),
(11, 'upload-06300d96a85faaed451f1c170e11624d.png', 'Jumarock'),
(12, 'upload-ee2d00585d698e41e7307f6126128c43.gif', 'Jumarock'),
(13, 'upload-c75a414fadc6eacda5abcd0cc53c4b0f.png', 'Jumarock'),
(14, 'upload-89ceb12db56a55824f0b5cf4b5a0e830.png', 'Jumarock'),
(15, 'upload-33cba0b9cfd1dbc3d244bb52e4a15d19.png', 'Jumarock');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_usuarios`
--

CREATE TABLE `aa_usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(5) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT 'padrao.png',
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `turno` enum('manha','tarde','noite') CHARACTER SET utf8 NOT NULL,
  `programa` varchar(255) CHARACTER SET utf8 NOT NULL,
  `skype` varchar(255) CHARACTER SET utf8 NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 NOT NULL,
  `advertencia` enum('0','1','2','3') CHARACTER SET utf8 NOT NULL,
  `banido` enum('false','true') CHARACTER SET utf8 NOT NULL,
  `motivo` text CHARACTER SET utf8 NOT NULL,
  `ultimo_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ultimo_ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `online` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `online_time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_usuarios`
--

INSERT INTO `aa_usuarios` (`id`, `usuario`, `senha`, `pin`, `avatar`, `status`, `turno`, `programa`, `skype`, `twitter`, `facebook`, `advertencia`, `banido`, `motivo`, `ultimo_time`, `ultimo_ip`, `online`, `online_time`) VALUES
(1, 'Admin', '2f297a57a5a743894a0e4a801fc3', '123', 'padrao.png', 'false', 'tarde', 'Nenhum', 'Nenhum', 'Nenhum', 'Nenhum', '0', 'false', '', '1594161167', '177.206.38.197', 'true', '1594161167'),
(5, 'Jumarock', '023a7bbd73250516f069df18b500', '555', 'padrao.png', 'true', 'tarde', 'Nenhum', 'Nenhum', 'Nenhum', 'Nenhum', '0', 'false', '', '1594164365', '191.136.132.54', 'true', '1594164365'),
(6, 'Caroline Lopes', '1eaf709d6c946294ca869bff8a8e', '2501', 'padrao.png', 'true', 'tarde', 'Nenhum', 'Nenhum', 'Nenhum', 'Nenhum', '0', 'false', '', '0', '0', 'false', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_usuarios_rel`
--

CREATE TABLE `aa_usuarios_rel` (
  `rel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aa_usuarios_rel`
--

INSERT INTO `aa_usuarios_rel` (`rel_id`, `user_id`, `cargo_id`) VALUES
(19, 1, 1),
(23, 6, 1),
(24, 5, 1),
(25, 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa_vinhetas`
--

CREATE TABLE `aa_vinhetas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `audio` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alertas`
--

CREATE TABLE `alertas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alertas_visto`
--

CREATE TABLE `alertas_visto` (
  `id` int(11) NOT NULL,
  `alerta_id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aliados`
--

CREATE TABLE `aliados` (
  `id` int(11) NOT NULL,
  `aliado` varchar(250) NOT NULL,
  `objetivo` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aliados`
--

INSERT INTO `aliados` (`id`, `aliado`, `objetivo`, `icon`) VALUES
(5, 'Polícia GOE', 'Tem o objetivo de qualificar indivíduos para o serviço policial e social.', 'https://mnioficial.com.br/admin/assets/uploads/upload-12c880609dd9007deb6d4d8a1111a965.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artes`
--

CREATE TABLE `artes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descricao` text CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imagem` varchar(255) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `moderado` enum('moderado','pendente') CHARACTER SET utf8 NOT NULL,
  `moderador` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'true',
  `tirinha` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'false',
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `width` varchar(255) CHARACTER SET utf8 NOT NULL,
  `height` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `artes_cat`
--

CREATE TABLE `artes_cat` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `artes_cat`
--

INSERT INTO `artes_cat` (`id`, `categoria`) VALUES
(1, 'Grosser'),
(2, 'Emblemas'),
(3, 'Tirinhas'),
(4, 'Logomarcas'),
(5, 'Layout'),
(6, 'Animações'),
(7, 'Backgrounds'),
(8, 'Emoctions'),
(9, 'Colantes'),
(10, 'Habbo imager'),
(11, 'Buttons'),
(13, 'Pixelização'),
(14, 'Resistência');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artes_comentarios`
--

CREATE TABLE `artes_comentarios` (
  `coment_id` int(11) NOT NULL,
  `arte_id` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `voto` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coisas_gratis`
--

CREATE TABLE `coisas_gratis` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imagem` text CHARACTER SET utf8 NOT NULL,
  `link` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaques`
--

CREATE TABLE `destaques` (
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `u_motivo` text CHARACTER SET utf8 NOT NULL,
  `membro` varchar(255) CHARACTER SET utf8 NOT NULL,
  `m_motivo` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `destaques`
--

INSERT INTO `destaques` (`usuario`, `u_motivo`, `membro`, `m_motivo`) VALUES
('Yuri Oliveira', 'Desenhar o KPanel Content Manager', 'Gabriel Henrique', 'Codificar e Programar o KPanel Content Manager');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emblemas`
--

CREATE TABLE `emblemas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imagem` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `vendedor` varchar(255) NOT NULL,
  `comprado` enum('true','false') NOT NULL DEFAULT 'false',
  `comprador` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `moedas`
--

CREATE TABLE `moedas` (
  `id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `estoque` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `moedas_usadas`
--

CREATE TABLE `moedas_usadas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imagem` text CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `revisado` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `revisador` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `fixo` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `evento` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `evento_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `projeto` enum('true','false') NOT NULL,
  `porcento` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias_cat`
--

CREATE TABLE `noticias_cat` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icone` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias_cat`
--

INSERT INTO `noticias_cat` (`id`, `categoria`, `icone`) VALUES
(2, 'Habbo Hotel', ''),
(3, 'Rádio', ''),
(4, 'Externas', ''),
(6, 'Colunas', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias_comentarios`
--

CREATE TABLE `noticias_comentarios` (
  `coment_id` int(11) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `voto` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias_visualizacao`
--

CREATE TABLE `noticias_visualizacao` (
  `id` int(11) NOT NULL,
  `id_not` int(11) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE `paginas` (
  `id` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `icone` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL DEFAULT 'true'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `ordem`, `icone`, `titulo`, `conteudo`, `url`, `categoria`, `status`) VALUES
(2359, 0, '', 'Teste', '<p>Teste</p>', '0', '7', 'true'),
(2358, 0, '', 'Teste', '<p>Teste</p>', '0', '6', 'true'),
(2357, 0, '', 'Teste', '<p>Teste</p>', '0', '5', 'true'),
(2356, 0, '', 'Teste', '<p>Teste</p>', '0', '4', 'true'),
(2355, 0, '', 'Teste', '<p>Teste</p>', '0', '3', 'true'),
(2354, 0, '', 'Teste', '<p>Teste</p>', '0', '2', 'true'),
(2353, 0, '', 'Teste', '<p>Teste</p>', '0', '1', 'true'),
(2361, 0, '', 'Projetos', '<p>PAGINA EM PHP.</p>', 'projetos', '9', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_cat`
--

CREATE TABLE `paginas_cat` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL DEFAULT '0',
  `icon` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas_cat`
--

INSERT INTO `paginas_cat` (`id`, `categoria`, `icon`) VALUES
(1, 'MNI', 'slide-9c44ab312819c373014a89a6aaefff7c.png'),
(2, 'Habbo Hotel', ''),
(4, 'Notícias', ''),
(9, 'Projetos', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceiros`
--

CREATE TABLE `parceiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `banner` text CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `parceiros`
--

INSERT INTO `parceiros` (`id`, `nome`, `banner`, `url`) VALUES
(1, 'DiscoHabbo - Aperte o play e divirta-se!', 'https://mnioficial.com.br/admin/assets/uploads/upload-7eb8a5744f71e275487f5425460204b9.gif', 'http://discohabbo.me/'),
(3, 'Gazeta Policial', 'https://mnioficial.com.br/admin/assets/uploads/upload-ee2d00585d698e41e7307f6126128c43.gif', 'https://www.gp-habbo.com.br/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `quartos_parceiros`
--

CREATE TABLE `quartos_parceiros` (
  `id` int(11) NOT NULL,
  `quarto` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` text CHARACTER SET utf8 NOT NULL,
  `dono` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recordes`
--

CREATE TABLE `recordes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `recordista` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `texto` text NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `imagem` text CHARACTER SET utf8 NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `nova_guia` enum('true','false') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `slide`
--

INSERT INTO `slide` (`id`, `imagem`, `titulo`, `descricao`, `url`, `nova_guia`) VALUES
(62, 'slide-0fe92b451ad4a23894f677737b5bbaa9.jpg', 'Xubaca Habbo', 'Conheça o melhor canal do Habbo Hotel!', 'https://www.youtube.com/channel/UCmENJjz-nRZpMB3mb9NRthQ', 'true'),
(63, 'slide-c4431616ff8ed88a1d304d8dade225e2.jpg', 'DiscoHabbo', 'Aperte o play e divirta-se!', 'https://discohabbo.com.br/', 'true'),
(64, 'slide-51ab47cc81f311a1e8a358188f42a253.png', 'Gazeta Polícial', 'Mais que qualidade e inovação!', 'https://www.gp-habbo.com.br/', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema`
--

CREATE TABLE `tema` (
  `cor_primaria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cor_secundaria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cor_terciaria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `background` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rolar` enum('true','false') CHARACTER SET utf8 NOT NULL,
  `repetir` enum('true','false') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tema`
--

INSERT INTO `tema` (`cor_primaria`, `cor_secundaria`, `cor_terciaria`, `background`, `rolar`, `repetir`) VALUES
('#4646d0', '#db603c', '#32e43a', '#958582', 'true', 'false');

-- --------------------------------------------------------

--
-- Estrutura da tabela `timeline`
--

CREATE TABLE `timeline` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mensagem` text CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `topicos`
--

CREATE TABLE `topicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `reviver_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `moderado` enum('moderado','fechado','pendente') CHARACTER SET utf8 NOT NULL DEFAULT 'pendente',
  `moderador` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'Nenhum',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `fixo` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'false',
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'true',
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `topicos_cat`
--

CREATE TABLE `topicos_cat` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `topicos_cat`
--

INSERT INTO `topicos_cat` (`id`, `categoria`) VALUES
(2, 'BeatsHabbo'),
(3, 'Apresentação'),
(4, 'Dúvidas'),
(5, 'Novidades'),
(6, 'Eventos/Promoções'),
(7, 'Vídeos/Músicas'),
(9, 'Habbo'),
(10, 'Jogos'),
(11, 'Sugestões'),
(12, 'Humor'),
(13, 'Outros'),
(14, 'Trocas e Negócios'),
(15, 'Curiosidades');

-- --------------------------------------------------------

--
-- Estrutura da tabela `topicos_comentarios`
--

CREATE TABLE `topicos_comentarios` (
  `coment_id` int(11) NOT NULL,
  `topico_id` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `voto` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'true',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `top_music`
--

CREATE TABLE `top_music` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `banda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imagem` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `top_music`
--

INSERT INTO `top_music` (`id`, `titulo`, `banda`, `imagem`, `url`) VALUES
(1, 'Teste', 'Teste', 'topmusic-e6d81251a65aecc8907eac8da4481d36.png', 'https://www.google.com.br/'),
(2, 'Teste', 'Teste', 'topmusic-077c974e928bae3e377cf2587d887c75.png', 'https://www.google.com.br/'),
(3, 'Teste', 'Teste', 'topmusic-5ea0c46683a0b82285686814c74d897c.png', 'https://www.google.com.br/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tube`
--

CREATE TABLE `tube` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'true'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tube`
--

INSERT INTO `tube` (`id`, `titulo`, `descricao`, `autor`, `video`, `time`, `status`) VALUES
(7, 'ZOANDO NO HABBO! [RODRIGOLAPY]', 'Null', 'Cartwon', 'IWdJtWCQCfA', '1489597829', 'true'),
(5, 'TIROS NO HABBO AWARDS! [RODRIGOLAPY]', 'Null', 'Cartwon', 'hNiSEevq_AE', '1489597829', 'true'),
(6, 'CORRE GALERA! [RODRIGOLAPY]', 'Null', 'Cartwon', 'sTG8eEJQjr4', '1489597829', 'true'),
(8, 'MEUS MOBIS PRA ELA! [RODRIGOLAPY]', 'Null', 'Cartwon', 'dEVYFpYHNuU', '1489597829', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ultimos_emblemas`
--

CREATE TABLE `ultimos_emblemas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'padrao.png',
  `background` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'padrao.png',
  `assinatura` text CHARACTER SET utf8 NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '@BeatsHabboFS',
  `registro_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `banido` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'false',
  `motivo_ban` text CHARACTER SET utf8 NOT NULL,
  `ultimo_ip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ultimo_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `moedas` int(11) NOT NULL DEFAULT 0,
  `online` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'false',
  `online_time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_emblemas`
--

CREATE TABLE `usuarios_emblemas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_mensagens`
--

CREATE TABLE `usuarios_mensagens` (
  `id` int(11) NOT NULL,
  `usuario_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mensagem` text CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `valores`
--

CREATE TABLE `valores` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `mobi` varchar(255) NOT NULL,
  `preco` int(11) NOT NULL,
  `estado` enum('subiu','manteve','caiu') NOT NULL,
  `icone` varchar(255) NOT NULL,
  `mobilia` varchar(255) NOT NULL,
  `valorista` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `valores_cat`
--

CREATE TABLE `valores_cat` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `icone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `zz_other`
--

CREATE TABLE `zz_other` (
  `schlussel` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `zz_other`
--

INSERT INTO `zz_other` (`schlussel`) VALUES
('ec7c0cee93c3958c49af635cc53');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aa_avisos`
--
ALTER TABLE `aa_avisos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_avisos_visto`
--
ALTER TABLE `aa_avisos_visto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_canais`
--
ALTER TABLE `aa_canais`
  ADD PRIMARY KEY (`canal_id`);

--
-- Índices para tabela `aa_cargos`
--
ALTER TABLE `aa_cargos`
  ADD PRIMARY KEY (`cargo_id`);

--
-- Índices para tabela `aa_horarios`
--
ALTER TABLE `aa_horarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_ip_ban`
--
ALTER TABLE `aa_ip_ban`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_lista_negra`
--
ALTER TABLE `aa_lista_negra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_locutor_voto`
--
ALTER TABLE `aa_locutor_voto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_logs_kick`
--
ALTER TABLE `aa_logs_kick`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_logs_moedas`
--
ALTER TABLE `aa_logs_moedas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_logs_painel`
--
ALTER TABLE `aa_logs_painel`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_logs_presenca`
--
ALTER TABLE `aa_logs_presenca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_notificacao`
--
ALTER TABLE `aa_notificacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_pedidos`
--
ALTER TABLE `aa_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_permissao`
--
ALTER TABLE `aa_permissao`
  ADD PRIMARY KEY (`per_id`);

--
-- Índices para tabela `aa_presenca`
--
ALTER TABLE `aa_presenca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_presenca_marcadas`
--
ALTER TABLE `aa_presenca_marcadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_tickets`
--
ALTER TABLE `aa_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_tickets_resp`
--
ALTER TABLE `aa_tickets_resp`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_uploads`
--
ALTER TABLE `aa_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_usuarios`
--
ALTER TABLE `aa_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aa_usuarios_rel`
--
ALTER TABLE `aa_usuarios_rel`
  ADD PRIMARY KEY (`rel_id`);

--
-- Índices para tabela `aa_vinhetas`
--
ALTER TABLE `aa_vinhetas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `alertas`
--
ALTER TABLE `alertas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `alertas_visto`
--
ALTER TABLE `alertas_visto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aliados`
--
ALTER TABLE `aliados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `artes`
--
ALTER TABLE `artes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `artes_cat`
--
ALTER TABLE `artes_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `artes_comentarios`
--
ALTER TABLE `artes_comentarios`
  ADD PRIMARY KEY (`coment_id`);

--
-- Índices para tabela `coisas_gratis`
--
ALTER TABLE `coisas_gratis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emblemas`
--
ALTER TABLE `emblemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `moedas`
--
ALTER TABLE `moedas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `moedas_usadas`
--
ALTER TABLE `moedas_usadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias_cat`
--
ALTER TABLE `noticias_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias_comentarios`
--
ALTER TABLE `noticias_comentarios`
  ADD PRIMARY KEY (`coment_id`);

--
-- Índices para tabela `noticias_visualizacao`
--
ALTER TABLE `noticias_visualizacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paginas_cat`
--
ALTER TABLE `paginas_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `parceiros`
--
ALTER TABLE `parceiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `quartos_parceiros`
--
ALTER TABLE `quartos_parceiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `recordes`
--
ALTER TABLE `recordes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `topicos`
--
ALTER TABLE `topicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `topicos_cat`
--
ALTER TABLE `topicos_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `topicos_comentarios`
--
ALTER TABLE `topicos_comentarios`
  ADD PRIMARY KEY (`coment_id`);

--
-- Índices para tabela `top_music`
--
ALTER TABLE `top_music`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tube`
--
ALTER TABLE `tube`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ultimos_emblemas`
--
ALTER TABLE `ultimos_emblemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_emblemas`
--
ALTER TABLE `usuarios_emblemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_mensagens`
--
ALTER TABLE `usuarios_mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `valores`
--
ALTER TABLE `valores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `valores_cat`
--
ALTER TABLE `valores_cat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aa_avisos`
--
ALTER TABLE `aa_avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `aa_avisos_visto`
--
ALTER TABLE `aa_avisos_visto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_canais`
--
ALTER TABLE `aa_canais`
  MODIFY `canal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `aa_cargos`
--
ALTER TABLE `aa_cargos`
  MODIFY `cargo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `aa_horarios`
--
ALTER TABLE `aa_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de tabela `aa_ip_ban`
--
ALTER TABLE `aa_ip_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_lista_negra`
--
ALTER TABLE `aa_lista_negra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_locutor_voto`
--
ALTER TABLE `aa_locutor_voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_logs_kick`
--
ALTER TABLE `aa_logs_kick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_logs_moedas`
--
ALTER TABLE `aa_logs_moedas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_logs_painel`
--
ALTER TABLE `aa_logs_painel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT de tabela `aa_logs_presenca`
--
ALTER TABLE `aa_logs_presenca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_notificacao`
--
ALTER TABLE `aa_notificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `aa_pedidos`
--
ALTER TABLE `aa_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_permissao`
--
ALTER TABLE `aa_permissao`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT de tabela `aa_presenca`
--
ALTER TABLE `aa_presenca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_presenca_marcadas`
--
ALTER TABLE `aa_presenca_marcadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_tickets`
--
ALTER TABLE `aa_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_tickets_resp`
--
ALTER TABLE `aa_tickets_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aa_uploads`
--
ALTER TABLE `aa_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `aa_usuarios`
--
ALTER TABLE `aa_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `aa_usuarios_rel`
--
ALTER TABLE `aa_usuarios_rel`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `aa_vinhetas`
--
ALTER TABLE `aa_vinhetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `alertas`
--
ALTER TABLE `alertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `alertas_visto`
--
ALTER TABLE `alertas_visto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aliados`
--
ALTER TABLE `aliados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `artes`
--
ALTER TABLE `artes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `artes_cat`
--
ALTER TABLE `artes_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `artes_comentarios`
--
ALTER TABLE `artes_comentarios`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coisas_gratis`
--
ALTER TABLE `coisas_gratis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emblemas`
--
ALTER TABLE `emblemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `moedas`
--
ALTER TABLE `moedas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `moedas_usadas`
--
ALTER TABLE `moedas_usadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticias_cat`
--
ALTER TABLE `noticias_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticias_comentarios`
--
ALTER TABLE `noticias_comentarios`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticias_visualizacao`
--
ALTER TABLE `noticias_visualizacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2362;

--
-- AUTO_INCREMENT de tabela `paginas_cat`
--
ALTER TABLE `paginas_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `parceiros`
--
ALTER TABLE `parceiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `quartos_parceiros`
--
ALTER TABLE `quartos_parceiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `recordes`
--
ALTER TABLE `recordes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `timeline`
--
ALTER TABLE `timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `topicos`
--
ALTER TABLE `topicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `topicos_cat`
--
ALTER TABLE `topicos_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `topicos_comentarios`
--
ALTER TABLE `topicos_comentarios`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `top_music`
--
ALTER TABLE `top_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tube`
--
ALTER TABLE `tube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `ultimos_emblemas`
--
ALTER TABLE `ultimos_emblemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios_emblemas`
--
ALTER TABLE `usuarios_emblemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios_mensagens`
--
ALTER TABLE `usuarios_mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `valores`
--
ALTER TABLE `valores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `valores_cat`
--
ALTER TABLE `valores_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
