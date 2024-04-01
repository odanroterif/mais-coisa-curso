CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nacionalidade` varchar(45) NOT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `editora` (
  `nome` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `obra` (
  `idobra` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `idioma` varchar(45) NOT NULL,
  `classificacao` varchar(45) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `ano_de_publicacao` year(4) NOT NULL,
  `edisao` varchar(45) NOT NULL,
  `fk_autor_idautor` int(11) DEFAULT NULL,
  `fk_editora_nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idobra`),
  KEY `fk_autor_idautor_idx` (`fk_autor_idautor`),
  KEY `fk_editora_nome_idx` (`fk_editora_nome`),
  CONSTRAINT `fk_autor_idautor` FOREIGN KEY (`fk_autor_idautor`) REFERENCES `autor` (`idautor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_editora_nome` FOREIGN KEY (`fk_editora_nome`) REFERENCES `editora` (`nome`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `relasao_emprestimo_usario/obra` (
  `fk_obra_idobra` int(11) NOT NULL,
  `fk_usuario_idusuario` int(11) NOT NULL,
  KEY `fk_usuario_idusuario_idx` (`fk_usuario_idusuario`),
  KEY `fk_obra_idobra` (`fk_obra_idobra`),
  CONSTRAINT `fk_obra_idobra` FOREIGN KEY (`fk_obra_idobra`) REFERENCES `obra` (`idobra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_idusuario` FOREIGN KEY (`fk_usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
