CREATE DATABASE bahya;
USE bahya;

CREATE TABLE monstros (
	id_monstro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    tipo VARCHAR(45),
    pontos_vida FLOAT,
    dano FLOAT,
    fkTerritorio INT,
    FOREIGN KEY (fk_territorio) REFERENCES territorios (id_territorio)
    );
    
INSERT INTO monstros VALUES
(null, 'Espírito da Névoa', 'Espírito', 80, 20, 1),
(null, 'Tronco Fantasmagórico', 'Fantasma', 170, 30, 1),
(null, 'Alma Perdida', 'Espírito', 60, 50, 1),
(null, 'Bruxa Possuída por Demônios', 'Chefe', 325, 70, 1),
(null, 'Espírito Solar', 'Espírito', 75, 30, 2),
(null, 'Cavaleiro Solari', 'Solari', 200, 55, 2),
(null, 'Ladrão Solari', 'Solari', 120, 75, 2),
(null, 'Drach von Solus', 'Chefe', 450, 100, 2),
(null, 'Goblin Ganancioso', 'Goblin', 140, 55, 3),
(null, 'Goblin Ferreiro', 'Goblin', 155, 5, 3),
(null, 'Sir Goblin', 'Goblin', 220, 75, 3),
(null, 'Batoré', 'Chefe', 530, 120, 3),
(null, 'Guerreiro Possuído', 'Apóstolo de Mori', 500, 125, 4),
(null, 'Demônio Enfurecido', 'Apóstolo de Mori', 700, 180, 4),
(null, 'Dizimador de Reinos', 'Apóstolo de Mori', 1500, 400, 4),
(null, 'Nogueirovski, o Demônio Maldito', 'Chefe', 10000, 999.9, 4),
(null, 'Dragonete', 'Dragão', 650, 100, 5),
(null, 'Mensageiro das Montanhas', 'Felino', 400, 200, 5),
(null, 'Dragão Ancião', 'Dragão', 850, 300, 5),
(null, 'Dragão Primordial', 'Chefe', 2500, 400, 5),
(null, 'Múmia', 'Zumbi', 300, 80, 6),
(null, 'Solari Renegado', 'Solari', 280, 70, 6),
(null, 'Faraó', 'Zumbi', 500, 130, 6),
(null, 'Espírito de Anúbis', 'Chefe', 1200, 225, 6),
(null, 'Espírito da Floresta', 'Espírito', 290, 90, 7),
(null, 'Urubu Cem', 'Ave', 400, 100, 7),
(null, 'Golem Musgoso', 'Golem', 800, 160, 7),
(null, 'Maokai, a Vingança da Natureza', 'Chefe', 1500, 280, 7);