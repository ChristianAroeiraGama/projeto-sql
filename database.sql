CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER,
    produto TEXT,
    valor REAL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email) VALUES
('João', 'joao@email.com'),
('Maria', 'maria@email.com');

INSERT INTO pedidos (cliente_id, produto, valor) VALUES
(1, 'Notebook', 3500),
(2, 'Mouse', 150);

SELECT clientes.nome, pedidos.produto
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id;
