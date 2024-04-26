-- CRIA BASE DE DADOS

CREATE DATABASE bdCurso;

-- Passa a utilizar a DB curso
use bdCurso;


-- Cria a tabela dos Cursos
CREATE TABLE tblCursos(
	CodCurso VARCHAR(6) NOT NULL,
	NomeCurso VARCHAR(8) NOT NULL,
	ProfessorTitularId VARCHAR(8) NOT NULL,
	NomeProfessor VARCHAR(30),
	PRIMARY KEY (codCurso)
);

-- Cria a tabela de Alunos
CREATE TABLE tblAluno(
	IdAluno VARCHAR(8) NOT NULL,
	CodCurso VARCHAR(6) NOT NULL,
	NomeAluno VARCHAR(6) NOT NULL,
	Cpf VARCHAR(11) NOT NULL,
	Idade INT NOT NULL,
	PRIMARY KEY (IdAluno),
	FOREIGN KEY (CodCurso) REFERENCES tblCursos(codCurso)
);

INSERT INTO tblCursos(CodCurso, NomeCurso, ProfessorTitularId, NomeProfessor) VALUES
(
	'889900',
	'E. Compt',
	'10101010',
	'Juan P.'
);

INSERT INTO tblCursos(CodCurso, NomeCurso, ProfessorTitularId, NomeProfessor) VALUES
(
	'102030',
	'Susto',
	'23234040',
	'M. Wazowski'
);

INSERT INTO tblCursos(CodCurso, NomeCurso, ProfessorTitularId, NomeProfessor) VALUES
(
	'303030',
	'E. Amb.',
	'12345678',
	'Shrek Shrekerson'
);

INSERT INTO tblAluno(IdAluno, CodCurso, NomeAluno, Cpf, Idade) VALUES 
(
	'13567979',
	'303030',
	'Gato',
	'12345678900',
	16
);

INSERT INTO tblAluno(IdAluno, CodCurso, NomeAluno, Cpf, Idade) VALUES 
(
	'14145678',
	'102030',
	'Boo',
	'11022933855',
	14
);

INSERT INTO tblAluno(IdAluno, CodCurso, NomeAluno, Cpf, Idade) VALUES 
(
	'12453679',
	'889900',
	'Agatha',
	'00988766522',
	24
);

SELECT * FROM tblAluno;
SELECT * FROM tblCursos;