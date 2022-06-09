CREATE DATABASE bahya;
USE bahya;

CREATE TABLE territorios (
id_territorio INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
tem_fragmento CHAR(3),
lider VARCHAR(45),
area FLOAT
);

INSERT INTO territorios(nome, tem_fragmento, descricao, lider, area) VALUES
('Floresta da Névoa Branca','sim','Hallas','3400'),
('Reino do Solis Rubrum','não','Wilril','5600'),
('Reino da Forja Dourada','sim','Thoval','3300'),
('Bahya', 'sim','Mori','15000'),
('Montanha do Éden','sim','Niddrien','2500'),
('O Deserto de Vitgut', 'não','Urug','6000'),
('A Floresta da Carvalho Branco','sim','Eldrin','4000');

CREATE TABLE monstros (
	id_monstro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    tipo VARCHAR(45),
    pontos_vida FLOAT,
    dano FLOAT,
    fk_territorio INT,
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
(null, 'Goblin Ferreiro', 'Goblin', 155, 50, 3),
(null, 'Sir Goblin', 'Goblin', 220, 75, 3),
(null, 'Batoré', 'Chefe', 530, 120, 3),
(null, 'Guerreiro Possuído', 'Apóstolo de Mori', 500, 125, 4),
(null, 'Demônio Enfurecido', 'Apóstolo de Mori', 700, 180, 4),
(null, 'Dizimador de Reinos', 'Apóstolo de Mori', 1500, 400, 4),
(null, 'Nogueirovski, o Demônio Maldito', 'Chefe', 10000, 999, 4),
(null, 'Dragonete', 'Dragão', 650, 100, 5),
(null, 'Mensageiro das Montanhas', 'Felino', 400, 200, 5),
(null, 'Dragão Ancião', 'Dragão', 850, 300, 5),
(null, 'Dragão Primordial', 'Chefe', 2500, 400, 5),
(null, 'Múmia', 'Zumbi', 300, 80, 6),
(null, 'Solari Renegado', 'Solari', 280, 70, 6),
(null, 'Faraó', 'Zumbi', 500, 130, 6),
(null, 'Capitão de Areia', 'Chefe', 1200, 225, 6),
(null, 'Espírito da Floresta', 'Espírito', 290, 90, 7),
(null, 'Urubu Cem', 'Ave', 400, 100, 7),
(null, 'Golem Musgoso', 'Golem', 800, 160, 7),
(null, 'Maokai, a Vingança da Natureza', 'Chefe', 1500, 280, 7);

CREATE TABLE racas (id_raca INT PRIMARY KEY AUTO_INCREMENT,
nome_raca VARCHAR(50),
descricao VARCHAR(200),
resistencia VARCHAR(80),
fraqueza VARCHAR(80));

INSERT INTO racas VALUES 
(null, 'Humano', 
'Os humanos são uma das ultimas raças a chegar na Bahya e são seres politicos. Estão na região do Reino do solis rubrum',
'Resistencia a anões', 'Magia vampirica e demoniaca'),
(null, 'Elfo', 
'Os elfos são criaturas da floresta e estão presentes na região Floresta do carvalho Branco (elfo bom) e da névoa branca (elfo mal)',
'Resistente a magia', 'Magia demoniaca'),
(null, 'Orc', 'Os orcs são criaturas grandes, robustas, fortes e amam batalhas. Eles são do deserto de Vitgut',
'Resistencia fisica muito alto', 'Cansa rápido'),
(null, 'Feliano', 
'Junto dos dracônicos, são criaturas antigas e eles vivem juntos na Montanha do éden. São caçadores noturnos e extremamente furtivos.',
'Resistência a queda', 'Magia de água'),
(null, 'Demônio', 
'Junto dos draconicos, são criaturas antigas e eles vivem juntos na Montanha do éden. São caçadores noturnos e extremamente furtivos.',
'Resistência a queda', 'Magia de água'),
(null, 'Dracônico', 
'Junto dos felianos são criaturas antigas e vivem juntos na Montanha do éden. Eles são ótimos fabricantes de armaduras',
'Fogo, veneno e lâminas', 'Armas de impacto'),
(null, 'Anão', 'Anões são muito engenhosos e ótimos ferreiros. Estão presentes na região do Reino da forja dourada',
'frio e calor', 'Coisas grandes');

CREATE TABLE armas (id_arma INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
raridade VARCHAR(8),
dano FLOAT,
tipo VARCHAR(45));

INSERT INTO armas(nome, raridade, dano, tipo) VALUES
('Chinelo de Mãe', 'lendário', 30, 'branca'),
('Rede Bahyana', 'raro', 5, 'arma'),
('Facão Cego', 'raro', 8, 'branca'),
('Estilingue', 'raro', 7, 'arma a distância'),
('Espada Longa', 'épico', 15, 'branca'),
('Machadinha', 'épico', 13, 'branca'),
('Chifre de Batoré', 'lendário', 30, 'branca'),
('Marreta Enferrujada', 'épico', 20, 'branca'),
('Cinto de Avô', 'lendário', 32, 'branca'),
('Facas Duplas Cegas', 'lendário', 40, 'branca');

CREATE TABLE clas (
id_cla INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
qtd_membros INT,
grito_guerra VARCHAR(45),
fk_territorio INT,
FOREIGN KEY (fk_territorio) REFERENCES territorios(id_territorio));

INSERT INTO clas VALUES 
(null,'Ganon',891,'Sozinhos nunca, juntos tambem nao!','1'),
(null,'Nogueirivitcs',666,'Oh yeah','4'),
(null,'Babu',642,'Fortes e destemidos','2'),
(null,'Niang',1002,'Sobreviver para viver','3'),
(null,'Muankai',733,'Entre a vida e a glória!','5'),
(null,'Soldadores',336,'Firme e forte!','6'),
(null,'Marmarcus',981,'Amor e conquista!','7'),
(null,'Kayles',190,'Eles nao passarao','1'),
(null,'Chinaz',7000,'Por tudo e todos!','3'),
(null,'Ziluanos',984,'Magicamente bons!','6');

CREATE TABLE personagens (
id_personagem INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
idade INT,
sexo CHAR(1),
CHECK (sexo = "F" OR sexo = "M"),
classe VARCHAR(45),
apelido VARCHAR(45),
vida FLOAT,
fk_cla INT,
FOREIGN KEY (fk_cla) REFERENCES clas(id_cla),
fk_arma INT,
FOREIGN KEY (fk_arma) REFERENCES armas(id_arma),
fk_raca INT,
FOREIGN KEY (fk_raca) REFERENCES racas(id_raca)
);

INSERT INTO personagens VALUES 
(NULL, "Mori", "130", "M", "Assassino", "O Arauto de Nogueirovski", 5000, 2, 10, 5),
(NULL, "Hariken", "21", "M", "Paladino", "O Demônio de 12 asas", 700, 5, 9, 5),
(NULL, "Beyonder", "30", "M", "Guerreiro", "A Praga dos 7 Reinos ", 800, 6, 5, 7),
(NULL, "Norleton", "20", "M", "Mago", "O Feitiçeiro", 500, 7, 4, 2),
(NULL, "Nogueirovski", "800", "M", "Necromante", "O Demônio Maldito", 6000, 2, 1, 5),
(NULL, "Padron", "26", "M", "Clérigo", "O Padre", 400, 9, 8, 1),
(NULL, "Maiskra", "28", "F", "Arqueiro", "A Felina", 550, 3, 3, 4),
(NULL, "Batoré", "24", "M", "Cavaleiro", "O Barbáro", 600, 1, 7, 3),
(NULL, "Alexomon", "34", "M", "Curandeiro", "O Médico", 450, 4, 3, 6);