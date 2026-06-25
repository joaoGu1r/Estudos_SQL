CREATE DATABASE IF NOT EXISTS ecommerce_treino;

USE ecommerce_treino;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50)
);
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserindo dados de teste
INSERT INTO clientes (nome, email, data_cadastro) VALUES
('Ana Silva', 'ana@email.com', '2025-01-10'),
('Bruno Costa', 'bruno@email.com', '2025-02-15'),
('Carlos Souza', 'carlos@email.com', '2025-03-20'),
('Daniela Lima', 'daniela@email.com', '2025-04-05');

INSERT INTO produtos (nome_produto, preco, categoria) VALUES
('Notebook', 3500.00, 'Eletrônicos'),
('Smartphone', 1800.00, 'Eletrônicos'),
('Cadeira Gamer', 1200.00, 'Móveis'),
('Livro de SQL', 90.00, 'Livros'),
('Teclado Mecânico', 350.00, 'Eletrônicos');

INSERT INTO pedidos (id_cliente, data_pedido, total) VALUES
(1, '2026-01-15', 3500.00),
(1, '2026-02-20', 350.00),
(2, '2026-03-02', 1800.00),
(3, '2026-03-15', 1290.00),
(4, '2026-04-10', 90.00);