-- Criar as tabelas
CREATE TABLE Frutas(
    id_frut INT PRIMARY KEY,
    nome VARCHAR(100),
    preco INT
);

CREATE TABLE Vendedores(
    id_vendedores INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Vendas(
    id_vendas INT PRIMARY KEY,
    id_frut INT,
    id_vendedores INT,
    FOREIGN KEY (id_frut) REFERENCES Frutas(id_frut),
    FOREIGN KEY (id_vendedores) REFERENCES Vendedores(id_vendedores)
);

-- Inserir alguns valores
INSERT INTO Frutas (id_frut, nome, preco)
VALUES (1, 'Maçã', 7),
    (2, 'Banana', 4),
    (3, 'Uva', 9),
    (4, 'Manga', 5),
    (5, 'Melancia', 3),
    (6, 'Morango', 10),
    (7, 'Laranja', 4),
    (8, 'Kiwi', 12),
    (9, 'Abacaxi', 6),
    (10, 'Pera', 8),
    (11, 'Caju', 7),
    (12, 'Melão', 4),
    (13, 'Goiaba', 5),
    (14, 'Ameixa', 9),
    (15, 'Pitaya', 15);

INSERT INTO Vendedores (id_vendedores, nome)
VALUES (1, 'João'),
    (2, 'Maria'),
    (3, 'Pedro'),
    (4, 'Ana'),
    (5, 'Carlos');

INSERT INTO Vendas (id_vendas, id_frut, id_vendedores)
VALUES
    (1, 1, 2),
    (2, 3, 1),
    (3, 5, 3);

-- Consultar as vendas com o nome da fruta e do vendedor
SELECT
    Vendas.id_vendas,
    Frutas.nome AS fruta,
    Vendedores.nome AS vendedor
FROM Vendas
INNER JOIN Frutas
    ON Vendas.id_frut = Frutas.id_frut
INNER JOIN Vendedores
    ON Vendas.id_vendedores = Vendedores.id_vendedores;
