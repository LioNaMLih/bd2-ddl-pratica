CREATE TABLE `alunos` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
); 

CREATE TABLE `matriculas` (
  `id` int NOT NULL,
  `curso` varchar(150) DEFAULT NULL,
  `data_matricula` date DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_matricula_aluno` (`aluno_id`),
  CONSTRAINT `fk_matricula_aluno` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
);