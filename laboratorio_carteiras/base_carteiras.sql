
CREATE TABLE carteiras (
    registro_id INT PRIMARY KEY,
    carteira_id INT,
    cliente VARCHAR(50),
    saldo NUMERIC(12,2),
    cluster VARCHAR(20)
);

CREATE TABLE assessorias (
    assessoria_id INT PRIMARY KEY,
    nome VARCHAR(50),
    volume_esperado INT
);

CREATE TABLE distribuicoes (
    distribuicao_id INT PRIMARY KEY,
    carteira_id INT,
    assessoria_id INT,
    data_distribuicao DATE
);

CREATE TABLE historico_clusters (
    historico_id INT PRIMARY KEY,
    carteira_id INT,
    cluster VARCHAR(20),
    data_alteracao DATE
);

INSERT INTO carteiras VALUES
(1,101,'Ana',1500,'A'),
(2,102,'Bruno',2500,'B'),
(3,103,'Carla',-500,'C'),
(4,104,'Daniel',NULL,'A'),
(5,105,'Eduardo',4300,'A'),
(6,106,'Fernanda',800,'C'),
(7,107,'Gabriel',1200,'B'),
(8,108,'Helena',3100,'A'),
(9,109,'Igor',950,'C'),
(10,110,'Julia',2200,'B'),
(11,101,'Ana',1500,'A'),
(12,NULL,'Marcos',1700,'B'),
(13,111,'Larissa',5300,'A'),
(14,112,'Pedro',600,'C');

INSERT INTO assessorias VALUES
(1,'Assessoria Alpha',4),
(2,'Assessoria Beta',3),
(3,'Assessoria Gamma',4);

INSERT INTO distribuicoes VALUES
(1,101,1,'2026-11-01'),
(2,102,1,'2026-11-01'),
(3,105,1,'2026-11-01'),
(4,106,1,'2026-11-01'),
(5,107,2,'2026-11-01'),
(6,108,2,'2026-11-01'),
(7,109,3,'2026-11-01'),
(8,110,3,'2026-11-01'),
(9,111,3,'2026-11-01'),
(10,112,3,'2026-11-01');

INSERT INTO historico_clusters VALUES
(1,101,'C','2026-09-01'),
(2,101,'B','2026-10-01'),
(3,101,'A','2026-11-01'),
(4,102,'A','2026-09-01'),
(5,102,'B','2026-11-01'),
(6,105,'B','2026-09-01'),
(7,105,'A','2026-11-01'),
(8,107,'B','2026-10-01'),
(9,107,'B','2026-11-01'),
(10,108,'C','2026-09-01'),
(11,108,'B','2026-10-01'),
(12,108,'A','2026-11-01');
