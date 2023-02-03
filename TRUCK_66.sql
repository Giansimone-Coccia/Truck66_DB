-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 05, 2023 alle 14:26
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truck66_6`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autista`
--

CREATE TABLE `autista` (
  `dipendenteA` varchar(15) NOT NULL,
  `pagaOraria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `autista`
--

INSERT INTO `autista` (`dipendenteA`, `pagaOraria`) VALUES
('A1000001', 15),
('A10000010', 19),
('A10000011', 19),
('A1000002', 13),
('A1000003', 18),
('A1000004', 14),
('A1000005', 16),
('A1000006', 22),
('A1000007', 23),
('A1000008', 18),
('A1000009', 35);

-- --------------------------------------------------------

--
-- Struttura della tabella `bustapaga`
--

CREATE TABLE `bustapaga` (
  `idTransazione` varchar(20) NOT NULL,
  `iban` varchar(30) NOT NULL,
  `importo` float NOT NULL,
  `dataB` date NOT NULL,
  `numeroOreLavoro` int(11) NOT NULL,
  `idDipendente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `bustapaga`
--

INSERT INTO `bustapaga` (`idTransazione`, `iban`, `importo`, `dataB`, `numeroOreLavoro`, `idDipendente`) VALUES
('B1000001', 'IT60X1234561239412790356123', 3000, '2021-04-30', 160, 'I1000001'),
('B1000002', 'IT67P9233587412413790356133', 1650, '2022-09-30', 160, 'I1000002'),
('B1000003', 'IT68B7223941279033582394127', 2500, '2022-08-31', 160, 'I1000003'),
('B1000004', 'IT68B7394122333589035612343', 1700, '2019-01-31', 160, 'I1000004'),
('B1000005', 'IT55L1241226926123941412790', 2400, '2018-01-12', 160, 'I1000005'),
('B1000006', 'IT51Y1223335842312790356126', 3000, '2022-05-30', 200, 'A1000001'),
('B1000007', 'IT40X3358423333423158903569', 3055, '2021-08-31', 235, 'A1000002'),
('B1000008', 'IT55L2790335312790381241790', 3240, '2020-09-30', 180, 'A1000003'),
('B1000009', 'IT34C2269261239442313941775', 2660, '2022-12-31', 190, 'A1000004'),
('B1000010', 'IT68F3353127903812999752345', 3360, '2019-08-31', 210, 'A1000004'),
('B1000011', 'IT60X1234561239412790356123', 3000, '2016-04-30', 160, 'I1000001'),
('B1000012', 'IT67P9233587412413790356133', 1650, '2019-05-31', 160, 'I1000002'),
('B1000013', 'IT68B7223941279033582394127', 2500, '2020-09-30', 160, 'I1000003'),
('B1000014', 'IT68B7394122333589035612343', 1700, '2000-01-01', 160, 'I1000004'),
('B1000015', 'IT55L1241226926123941412790', 2400, '2015-01-31', 160, 'I1000005'),
('B1000016', 'IT51Y1223335842312790356126', 3525, '2014-05-30', 235, 'A1000001'),
('B1000017', 'IT40X3358423333423158903569', 2600, '2018-06-30', 200, 'A1000002'),
('B1000018', 'IT55L2790335312790381241790', 3510, '2022-10-30', 195, 'A1000003'),
('B1000019', 'IT34C2269261239442313941775', 2240, '2022-12-31', 160, 'A1000004'),
('B1000020', 'IT68F3353127903812999752345', 2720, '2020-05-31', 170, 'A1000004');

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `p_iva` varchar(13) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `citta` varchar(15) DEFAULT NULL,
  `cap` smallint(6) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `num_civico` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`p_iva`, `nome`, `citta`, `cap`, `via`, `num_civico`) VALUES
('12548960125', 'Amadori', 'Bergamo', 24100, 'Via Andreotti', 2145),
('15425698524', 'Fiat', 'Torino', 32767, 'Via Stadio', 1475),
('1584960215', 'SMC', 'Milano', 20018, 'Via G.Garibaldi', 129),
('21360015205', 'Ottima S.p.a', 'Bologna', 32767, 'Viale Garibaldi', 2548),
('41569800145', 'Palena', 'Paglieta', 32767, 'Via Cristoforo Colom', 72),
('45847774584', 'Sevel', 'Val Di Sangro', 32767, 'Via Costruttori', 86),
('47852106565', 'CCS Compnay', 'Milano', 20018, 'Corso Mazzini', 1584),
('48755896320', 'Honda', 'Val Di Sangro', 32767, 'Via Cristofori', 98),
('51480321695', 'Electrica', 'Belluno', 32767, 'Eugenio Crispi', 1254),
('54982100574', 'Excit srl', 'Teramo', 32767, 'Viale Crispi', 180),
('58496521054', 'Travaglini S.r.', 'Vasto', 32767, 'Via Verdi', 38),
('65456982001', 'Valagro', 'Val Di Sangro', 32767, 'Via Pianura', 55),
('85748520015', 'De Girolamo R.', 'Pavia', 32767, 'Via Bruni', 178),
('86334519757', 'Autostock 24', 'Termoli', 32767, 'Via Peppino', 25);

-- --------------------------------------------------------

--
-- Struttura della tabella `contratto`
--

CREATE TABLE `contratto` (
  `dataStipulazione` date NOT NULL,
  `idContratto` varchar(15) NOT NULL,
  `durataContratto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `contratto`
--

INSERT INTO `contratto` (`dataStipulazione`, `idContratto`, `durataContratto`) VALUES
('2021-02-15', 'P1000001', '1 Mese'),
('2021-02-15', 'P1000005', '1 Anno'),
('2021-03-01', 'P1000003', '2 Anni'),
('2021-03-05', 'P1000004', '4 Mesi'),
('2021-03-20', 'P1000002', '4 Mesi'),
('2021-05-20', 'P1000006', 'A termine pagamento'),
('2021-06-15', 'P1000007', 'A termine pagamento'),
('2022-02-15', 'P1000018', '2 Mesi'),
('2022-02-17', 'P1000017', '2 Mesi'),
('2022-03-15', 'P1000012', 'A termine pagamento'),
('2022-03-16', 'P1000015', '1 Anno'),
('2022-03-17', 'P1000011', 'A termine pagamento'),
('2022-03-20', 'P1000016', '1 Anno'),
('2022-05-06', 'P1000010', '2 Mesi'),
('2022-05-10', 'P1000014', '6 Mesi'),
('2022-06-30', 'P1000015', '3 Mesi');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

CREATE TABLE `dipendente` (
  `matricola` varchar(15) NOT NULL,
  `codiceFiscale` char(16) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `cognome` varchar(15) NOT NULL,
  `dataDiNascita` date NOT NULL,
  `citta` varchar(15) NOT NULL,
  `cap` smallint(6) NOT NULL,
  `numeroCivico` smallint(6) NOT NULL,
  `via` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`matricola`, `codiceFiscale`, `nome`, `cognome`, `dataDiNascita`, `citta`, `cap`, `numeroCivico`, `via`) VALUES
('A1000001', 'RSSMRO52FD74GT8E', 'Mario', 'Rossi', '1968-12-23', 'Napoli', 32767, 29, 'Via scacciacani'),
('A10000010', 'LONLRZ584ER59DF4', 'Lorenzo', 'Leone', '1974-05-23', 'Pescara', 28021, 109, 'Via Nicola bass'),
('A10000011', 'JBBI8O1R89L113RE', 'Alberto', 'Lombardi', '1988-07-20', 'San Salvo', 24010, 12, 'Via Lombardi'),
('A1000002', 'CRSMTT45ER84DFG6', 'Mattia', 'Caruso', '1993-03-15', 'Campobasso', 32767, 59, 'Via rincorri'),
('A1000003', 'GKKPU0IC23L888U', 'Luca', 'Cacchioni', '1972-05-18', 'Pietralcina', 32767, 60, 'Via sasso'),
('A1000004', 'HMNCU9IC45LXX1', 'Harnold', 'Mercurio', '1984-11-27', 'Pescara', 32767, 1, 'Via porto'),
('A1000005', 'JBBI8O1R89L113R', 'Mauro', 'Felice', '1986-04-30', 'Pescara', 32767, 12, 'Via centro'),
('A1000006', 'CSMLCC15L85D23FD', 'Luciano', 'Casimiro', '1970-12-23', 'Lecce', 32767, 147, 'Viale Augusto'),
('A1000007', 'ESPELD45GH5844DH', 'Elide', 'Esposito', '1994-07-15', 'Cosenza', 32767, 104, 'Via alfredo fus'),
('A1000008', 'MNLDVD458FG63AS5', 'Davide', 'Manuele', '1977-05-14', 'Roma', 136, 6, 'Via belviglieri'),
('A1000009', 'RMNLLL5484FHD203', 'Lilla', 'Romani', '1980-10-24', 'Montauro', 32767, 85, 'Piazza della Re'),
('I1000001', 'JBBI8O1R77L113R', 'Simone', 'Ietto', '1977-06-25', 'Ancona', 32767, 12, 'Via Mercurio'),
('I1000002', 'UPBI8O1R77L113R', 'Umberto', 'Prole', '1965-09-21', 'Ancona', 32767, 111, 'Corso Giuseppe '),
('I1000003', 'CBBI8O1R77L113R', 'Bartolomeo', 'Belli', '1965-06-14', 'Termoli', 32767, 100, 'Corso Nazionale'),
('I1000004', 'KGBI8O1R77L113R', 'Pietro', 'Marina', '1990-01-23', 'Termoli', 32767, 109, 'Corso Garibaldi'),
('I1000005', 'LBBI8O1R77L113R7', 'Luca', 'Brutti', '1984-08-16', 'Pesaro', 14798, 16, 'Via vivi'),
('I1000006', 'SCHVLA45ER69D458', 'Viola', 'Schiavone', '1987-06-28', 'Lanciano', 32767, 12, 'Viale delle pro'),
('I1000007', 'CNDUMT458ER4DF9R', 'Umberto', 'Canadesi', '1967-09-20', 'Ancona', 32767, 111, 'Corso 4 Maggio '),
('I1000008', 'BRTCRM45ERT96DFG', 'Carmine', 'Bartolucci', '1985-03-19', 'Chieti', 32767, 185, 'Corso Trento');

-- --------------------------------------------------------

--
-- Struttura della tabella `emailc`
--

CREATE TABLE `emailc` (
  `email` varchar(30) NOT NULL,
  `idAcquirente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `emailc`
--

INSERT INTO `emailc` (`email`, `idAcquirente`) VALUES
('mgc1@gmail.com', '12548960125'),
('mgc2@gmail.com', '12548960125'),
('SMCspa@gmail.com', '1584960215'),
('warnerInc1@outlook.com', '1584960215'),
('warnerInc2@outlook.com', '1584960215'),
('ottimaSPa@libero.it', '21360015205'),
('roziCorp@hotmail.it', '41569800145'),
('stabilimento_sevel@libero.it', '45847774584'),
('ccs@gmail.com', '47852106565'),
('hondaass#honda.com', '48755896320'),
('amadori@gmail.com', '54982100574'),
('Honda-com@gmail.com', '54982100574'),
('travagliniSrl@alice.it', '58496521054'),
('valagro_ass@gmaail.com', '65456982001'),
('dgrm@libero.it', '85748520015'),
('autoS24@hotmail.it', '86334519757'),
('scm@outlook.com', '86334519757');

-- --------------------------------------------------------

--
-- Struttura della tabella `emaild`
--

CREATE TABLE `emaild` (
  `email` varchar(30) NOT NULL,
  `dipendenteId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `emaild`
--

INSERT INTO `emaild` (`email`, `dipendenteId`) VALUES
('iveco123@gmail.com', 'A1000001'),
('scania123@hotmail.it', 'A1000001'),
('mercedes123@gmail.com', 'A1000002'),
('volvo45@gmail.com', 'A1000003'),
('renault1968@outlook.com', 'A1000004'),
('cybertruck123@gmail.com', 'A1000005'),
('turbostar1969@gmail.com', 'A1000005'),
('bellacitta@gmail.com', 'I1000001'),
('innovazione123@hotmail.it', 'I1000001'),
('prova123@outlook.com', 'I1000002'),
('italiachetrasporta@outlook.com', 'I1000003'),
('italia123@gmail.com', 'I1000004'),
('superimpiegato@outlook.it', 'I1000005'),
('truck66@gmail.com', 'I1000005');

-- --------------------------------------------------------

--
-- Struttura della tabella `fattura`
--

CREATE TABLE `fattura` (
  `idTransazione` varchar(15) NOT NULL,
  `iban` varchar(30) NOT NULL,
  `importo` float NOT NULL,
  `dataF` date DEFAULT NULL,
  `scadenza` date DEFAULT NULL,
  `criterioPagamento` varchar(30) NOT NULL,
  `idCliente` varchar(15) NOT NULL,
  `idTrasporto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `fattura`
--

INSERT INTO `fattura` (`idTransazione`, `iban`, `importo`, `dataF`, `scadenza`, `criterioPagamento`, `idCliente`, `idTrasporto`) VALUES
('F4586325', 'IT878141896348901495735263', 1278, '2023-03-03', '2023-03-06', 'Pagamento metri occupati', '21360015205', 'T0000010'),
('F4598742', 'IT747812332789345201589632', 4560, '2023-06-06', '2023-07-06', 'Pagamento metri occupati', '1584960215', 'T0000007'),
('F4851269', 'IT854854896300001457845963', 709, '2023-09-11', '2023-09-20', 'Pagamento metri occupati', '65456982001', 'T0000012'),
('F5009621', 'IT547896321058745201589632', 500, '2023-06-29', '2023-07-02', 'Pagamento al km', '41569800145', 'T0000008'),
('F5489621', 'IT547896321058745201589632', 1547.2, '2023-03-03', '2023-03-05', 'Pagamento al km', '41569800145', 'T0000005'),
('F9876325', 'IT997854665300441457845963', 1000, '2022-12-01', '2022-12-05', 'Pagamento al km', '12548960125', 'T0000001');

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegato`
--

CREATE TABLE `impiegato` (
  `dipendenteI` varchar(15) NOT NULL,
  `ruolo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `impiegato`
--

INSERT INTO `impiegato` (`dipendenteI`, `ruolo`) VALUES
('I1000001', 'Amministrazione'),
('I1000002', 'Segreteria'),
('I1000003', 'Amministrazione'),
('I1000004', 'Segreteria'),
('I1000005', 'Contabilità'),
('I1000006', 'Amministrazione'),
('I1000007', 'Segreteria'),
('I1000008', 'Amministrazione');

-- --------------------------------------------------------

--
-- Struttura della tabella `merce`
--

CREATE TABLE `merce` (
  `idStock` varchar(10) NOT NULL,
  `quantita` smallint(6) NOT NULL,
  `tipologia` varchar(20) DEFAULT NULL,
  `trasporto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `merce`
--

INSERT INTO `merce` (`idStock`, `quantita`, `tipologia`, `trasporto`) VALUES
('S10250047', 5, 'Prodotti alimentari', 'T0000009'),
('S105854789', 3, 'Semilavorati', 'T0000006'),
('S117845023', 7, 'Prodotti finiti', 'T0000008'),
('S125478963', 4, 'Prodotti alimentari', 'T0000005'),
('S224789630', 4, 'Prodotti alimentari', 'T0000008'),
('S336547128', 4, 'Prodotti finiti', 'T0000010'),
('S341258745', 4, 'Materie prime', 'T0000005'),
('S369632014', 8, 'Semilavorati', 'T0000009'),
('S471741474', 6, 'Prodotti finiti', 'T0000011'),
('S478510036', 7, 'Prodotti finiti', 'T0000003'),
('S487592001', 5, 'Semilavorati', 'T0000002'),
('S541208569', 6, 'Materie prime', 'T0000001'),
('S554780126', 4, 'Prodotti alimentari', 'T0000010'),
('S555478123', 2, 'Semilavorati', 'T0000008'),
('S693200014', 8, 'Semilavorati', 'T0000012'),
('S741369852', 11, 'Semilavorati', 'T0000004'),
('S854012500', 8, 'Semilavorati', 'T0000012'),
('S887000015', 5, 'Materie prime', 'T0000003'),
('S955740028', 7, 'Semilavorati', 'T0000002'),
('S987400265', 7, 'Prodotti finiti', 'T0000011'),
('S999874100', 2, 'Prodotti finiti', 'T0000007');

-- --------------------------------------------------------

--
-- Struttura della tabella `mezzoditrasporto`
--

CREATE TABLE `mezzoditrasporto` (
  `targa` varchar(12) NOT NULL,
  `intestatario` varchar(30) NOT NULL,
  `chilometriPercorsi` float NOT NULL,
  `modello` varchar(20) NOT NULL,
  `assicurazione` date NOT NULL,
  `bollo` date NOT NULL,
  `revisione` date NOT NULL,
  `tagliando` date NOT NULL,
  `idAutista` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `mezzoditrasporto`
--

INSERT INTO `mezzoditrasporto` (`targa`, `intestatario`, `chilometriPercorsi`, `modello`, `assicurazione`, `bollo`, `revisione`, `tagliando`, `idAutista`) VALUES
('DF003HB', 'Antonio Iezzi', 345612, 'Mercedes', '2023-03-15', '2023-05-18', '2023-03-12', '2023-08-26', 'A1000003'),
('DH305LA', 'Alessandra Iezzi', 987452, 'Renault', '2023-02-05', '2023-02-08', '2023-02-28', '2023-03-02', 'A1000003'),
('ER965TS', 'Fabio Iezzi', 215865, 'Mercedes', '2023-02-12', '2023-04-14', '2023-04-14', '2023-08-15', 'A1000007'),
('ER965WE', 'Fabio Iezzi', 54712, 'Mercedes', '2023-09-12', '2023-05-17', '2023-04-22', '2023-09-14', 'A10000010'),
('FF123NM', 'Fabio Iezzi', 245768, 'Mercedes', '2023-09-12', '2023-04-17', '2023-04-17', '2023-09-15', 'A1000004'),
('FG854WE', 'Antonio Iezzi', 854120, 'Scania', '2023-03-19', '2023-05-17', '2023-08-12', '2023-08-21', NULL),
('FH548ET', 'Antonio Iezzi', 987452, 'Scania', '2023-02-03', '2023-04-09', '2023-03-21', '2023-05-15', 'A1000002'),
('JK485II', 'Alessandra Iezzi', 125698, 'Mercedes', '2023-05-09', '2023-10-11', '2023-10-25', '2022-12-06', 'A1000009'),
('LK845SD', 'Alessandra Iezzi', 0, 'Mercedes', '2023-09-06', '2023-10-11', '2023-11-25', '2022-12-29', 'A1000005'),
('SA851JJ', 'Alessandra Iezzi', 125486, 'Mercedes', '2023-05-06', '2023-09-11', '2023-09-25', '2022-12-29', 'A1000005'),
('SD063KL', 'Fabio Iezzi', 148965, 'Renault', '2023-05-18', '2023-02-22', '2022-12-30', '2023-03-17', 'A1000001'),
('SX542WE', 'Antonio Iezzi', 9674, 'Scania', '2023-07-08', '2023-04-04', '2023-09-28', '2023-05-24', NULL),
('VF412ER', 'Fabio Iezzi', 0, 'Renault', '2023-05-18', '2023-10-22', '2022-12-30', '2023-07-17', NULL),
('VV854HJ', 'Alessandra Iezzi', 0, 'Renault', '2023-08-09', '2023-07-08', '2023-02-20', '2023-08-05', NULL),
('WE129XC', 'Fabio Iezzi', 123654, 'Renault', '2023-08-18', '2023-02-18', '2022-05-30', '2023-02-17', 'A1000008'),
('WW521CV', 'Antonio Iezzi', 87452, 'Scania', '2023-06-03', '2023-04-04', '2023-09-21', '2023-02-15', 'A10000011');

-- --------------------------------------------------------

--
-- Struttura della tabella `numtelefonoc`
--

CREATE TABLE `numtelefonoc` (
  `numero` varchar(11) NOT NULL,
  `idAcquirente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `numtelefonoc`
--

INSERT INTO `numtelefonoc` (`numero`, `idAcquirente`) VALUES
('355678743', '12548960125'),
('3548975215', '15425698524'),
('0872548965', '1584960215'),
('323224590', '1584960215'),
('0872854125', '21360015205'),
('333435666', '41569800145'),
('0873541289', '45847774584'),
('071548965', '47852106565'),
('07154785210', '48755896320'),
('071548523', '54982100574'),
('311234546', '54982100574'),
('379542145', '54982100574'),
('3654712501', '65456982001'),
('3697854120', '85748520015'),
('3001254895', '86334519757'),
('388753112', '86334519757'),
('398456721', '86334519757');

-- --------------------------------------------------------

--
-- Struttura della tabella `numtelefonod`
--

CREATE TABLE `numtelefonod` (
  `numero` varchar(11) NOT NULL,
  `dipendenteId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `numtelefonod`
--

INSERT INTO `numtelefonod` (`numero`, `dipendenteId`) VALUES
('0875704988', 'A1000001'),
('3701158653', 'A1000001'),
('3701155652', 'A1000002'),
('0765708965', 'A1000003'),
('3805585510', 'A1000004'),
('0879894960', 'A1000005'),
('3805586510', 'A1000005'),
('0875704989', 'I1000001'),
('3701158651', 'I1000001'),
('3334560726', 'I1000002'),
('0765708973', 'I1000003'),
('3805586517', 'I1000004'),
('0879894963', 'I1000005'),
('3805586515', 'I1000005');

-- --------------------------------------------------------

--
-- Struttura della tabella `preventivo`
--

CREATE TABLE `preventivo` (
  `idPreventivo` varchar(15) NOT NULL,
  `importoFinale` float NOT NULL,
  `clientePIVA` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `preventivo`
--

INSERT INTO `preventivo` (`idPreventivo`, `importoFinale`, `clientePIVA`) VALUES
('P1000001', 2300.8, '12548960125'),
('P1000002', 5680, '1584960215'),
('P1000003', 1340, '41569800145'),
('P1000004', 4778, '54982100574'),
('P1000005', 3313, '86334519757'),
('P1000006', 12781, '1584960215'),
('P1000007', 1529.75, '41569800145'),
('P1000008', 1578.8, '15425698524'),
('P1000009', 2354.8, '21360015205'),
('P1000010', 9542.7, '45847774584'),
('P1000011', 10258.5, '48755896320'),
('P1000012', 11589.4, '65456982001'),
('P1000014', 3000, '65456982001'),
('P1000015', 5486.8, '12548960125'),
('P1000016', 6987.2, '41569800145'),
('P1000017', 3456.8, '41569800145'),
('P1000018', 11256.7, '1584960215');

-- --------------------------------------------------------

--
-- Struttura della tabella `trasporto`
--

CREATE TABLE `trasporto` (
  `identificativo` varchar(15) NOT NULL,
  `dataTr` date NOT NULL,
  `destinazione` varchar(20) NOT NULL,
  `cittaPartenza` varchar(20) NOT NULL,
  `distanza` float NOT NULL,
  `idMezzo` varchar(15) DEFAULT NULL,
  `idContra` varchar(15) NOT NULL,
  `dataCont` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `trasporto`
--

INSERT INTO `trasporto` (`identificativo`, `dataTr`, `destinazione`, `cittaPartenza`, `distanza`, `idMezzo`, `idContra`, `dataCont`) VALUES
('T0000001', '2022-11-23', 'Palermo', 'Pescara', 926, 'DF003HB', 'P1000001', '2021-02-15'),
('T0000002', '2023-01-27', 'Pescara', 'Termoli', 107.2, 'DH305LA', 'P1000001', '2021-02-15'),
('T0000003', '2023-03-11', 'Ancona', 'Termoli', 260.5, '', 'P1000002', '2021-03-20'),
('T0000004', '2023-03-29', 'Termoli', 'Ancona', 260.5, '', 'P1000003', '2021-03-01'),
('T0000005', '2023-02-21', 'Urbino', 'Bologna', 150, 'ER965WE', 'P1000004', '2021-03-05'),
('T0000006', '2023-02-20', 'Ancona', 'Milano', 439, 'SX542WE', 'P1000005', '2021-02-15'),
('T0000007', '2023-06-24', 'Palermo', 'Pescara', 927, 'VF412ER', 'P1000006', '2021-05-20'),
('T0000008', '2023-06-20', 'Ancona', 'Jesi', 32.4, '', 'P1000007', '2021-06-15'),
('T0000009', '2022-12-27', 'Ancona', 'Senigallia', 28.9, 'FG854WE', 'P1000004', '2021-03-05'),
('T0000010', '2023-02-22', 'Termoli', 'Ancona', 260.5, 'SA851JJ', 'P1000005', '2021-02-15'),
('T0000011', '2023-06-17', 'Pesaro', 'Bologna', 150, '', 'P1000003', '2021-03-01'),
('T0000012', '2023-09-08', 'Senigallia', 'Ancona', 439, '', 'P1000003', '2021-03-01');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autista`
--
ALTER TABLE `autista`
  ADD PRIMARY KEY (`dipendenteA`);

--
-- Indici per le tabelle `bustapaga`
--
ALTER TABLE `bustapaga`
  ADD PRIMARY KEY (`idTransazione`),
  ADD KEY `idDipendente` (`idDipendente`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`p_iva`);

--
-- Indici per le tabelle `contratto`
--
ALTER TABLE `contratto`
  ADD PRIMARY KEY (`dataStipulazione`,`idContratto`),
  ADD KEY `idContratto` (`idContratto`);

--
-- Indici per le tabelle `dipendente`
--
ALTER TABLE `dipendente`
  ADD PRIMARY KEY (`matricola`);

--
-- Indici per le tabelle `emailc`
--
ALTER TABLE `emailc`
  ADD PRIMARY KEY (`email`),
  ADD KEY `idAcquirente` (`idAcquirente`);

--
-- Indici per le tabelle `emaild`
--
ALTER TABLE `emaild`
  ADD PRIMARY KEY (`email`),
  ADD KEY `dipendenteId` (`dipendenteId`);

--
-- Indici per le tabelle `fattura`
--
ALTER TABLE `fattura`
  ADD PRIMARY KEY (`idTransazione`),
  ADD KEY `idTrasporto` (`idTrasporto`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indici per le tabelle `impiegato`
--
ALTER TABLE `impiegato`
  ADD PRIMARY KEY (`dipendenteI`);

--
-- Indici per le tabelle `merce`
--
ALTER TABLE `merce`
  ADD PRIMARY KEY (`idStock`),
  ADD KEY `trasporto` (`trasporto`);

--
-- Indici per le tabelle `mezzoditrasporto`
--
ALTER TABLE `mezzoditrasporto`
  ADD PRIMARY KEY (`targa`),
  ADD KEY `idAutista` (`idAutista`);

--
-- Indici per le tabelle `numtelefonoc`
--
ALTER TABLE `numtelefonoc`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `idAcquirente` (`idAcquirente`);

--
-- Indici per le tabelle `numtelefonod`
--
ALTER TABLE `numtelefonod`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `dipendenteId` (`dipendenteId`);

--
-- Indici per le tabelle `preventivo`
--
ALTER TABLE `preventivo`
  ADD PRIMARY KEY (`idPreventivo`),
  ADD KEY `clientePIVA` (`clientePIVA`);

--
-- Indici per le tabelle `trasporto`
--
ALTER TABLE `trasporto`
  ADD PRIMARY KEY (`identificativo`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `autista`
--
ALTER TABLE `autista`
  ADD CONSTRAINT `autista_ibfk_1` FOREIGN KEY (`dipendenteA`) REFERENCES `dipendente` (`matricola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `bustapaga`
--
ALTER TABLE `bustapaga`
  ADD CONSTRAINT `bustapaga_ibfk_1` FOREIGN KEY (`idDipendente`) REFERENCES `dipendente` (`matricola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `contratto`
--
ALTER TABLE `contratto`
  ADD CONSTRAINT `contratto_ibfk_1` FOREIGN KEY (`idContratto`) REFERENCES `preventivo` (`idPreventivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `emailc`
--
ALTER TABLE `emailc`
  ADD CONSTRAINT `emailc_ibfk_1` FOREIGN KEY (`idAcquirente`) REFERENCES `cliente` (`p_iva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `emaild`
--
ALTER TABLE `emaild`
  ADD CONSTRAINT `emaild_ibfk_1` FOREIGN KEY (`dipendenteId`) REFERENCES `dipendente` (`matricola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `fattura`
--
ALTER TABLE `fattura`
  ADD CONSTRAINT `fattura_ibfk_1` FOREIGN KEY (`idTrasporto`) REFERENCES `trasporto` (`identificativo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fattura_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`p_iva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `impiegato`
--
ALTER TABLE `impiegato`
  ADD CONSTRAINT `impiegato_ibfk_1` FOREIGN KEY (`dipendenteI`) REFERENCES `dipendente` (`matricola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `merce`
--
ALTER TABLE `merce`
  ADD CONSTRAINT `merce_ibfk_1` FOREIGN KEY (`trasporto`) REFERENCES `trasporto` (`identificativo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mezzoditrasporto`
--
ALTER TABLE `mezzoditrasporto`
  ADD CONSTRAINT `mezzoditrasporto_ibfk_1` FOREIGN KEY (`idAutista`) REFERENCES `autista` (`dipendenteA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `numtelefonoc`
--
ALTER TABLE `numtelefonoc`
  ADD CONSTRAINT `numtelefonoc_ibfk_1` FOREIGN KEY (`idAcquirente`) REFERENCES `cliente` (`p_iva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `numtelefonod`
--
ALTER TABLE `numtelefonod`
  ADD CONSTRAINT `numtelefonod_ibfk_1` FOREIGN KEY (`dipendenteId`) REFERENCES `dipendente` (`matricola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `preventivo`
--
ALTER TABLE `preventivo`
  ADD CONSTRAINT `preventivo_ibfk_1` FOREIGN KEY (`clientePIVA`) REFERENCES `cliente` (`p_iva`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
