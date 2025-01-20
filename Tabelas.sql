-- Tabela Clientes
CREATE TABLE Clientes (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15)
);

-- Tabela Categorias
CREATE TABLE Categorias (
    categoria_id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela Produtos
CREATE TABLE Produtos (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco NUMERIC(10, 2) NOT NULL,
    categoria_id INT REFERENCES Categorias(categoria_id)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES Clientes(cliente_id),
    data_pedido DATE NOT NULL
);

-- Tabela Detalhes do Pedido
CREATE TABLE Detalhes_Pedido (
    detalhe_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES Pedidos(pedido_id),
    produto_id INT REFERENCES Produtos(produto_id),
    quantidade INT NOT NULL
);

-- Inserção de Clientes
INSERT INTO Clientes (nome, email, telefone) VALUES
('João Silva', 'joao@gmail.com', '999999999'),
('Maria Oliveira', 'maria@gmail.com', '988888888'),
('Carlos Souza', 'carlos@gmail.com', '977777777'),
('Ana Pereira', 'ana@gmail.com', '966666666'),
('Paulo Lima', 'paulo@gmail.com', '955555555'),
('Fernanda Costa', 'fernanda@gmail.com', '944444444'),
('Roberto Nunes', 'roberto@gmail.com', '933333333'),
('Laura Almeida', 'laura@gmail.com', '922222222'),
('Pedro Martins', 'pedro@gmail.com', '911111111'),
('Camila Rocha', 'camila@gmail.com', '900000000');

-- Inserção de Categorias
INSERT INTO Categorias (nome) VALUES
('Eletrônicos'),
('Livros'),
('Móveis'),
('Roupas'),
('Alimentos'),
('Beleza'),
('Esportes'),
('Automóveis'),
('Brinquedos'),
('Ferramentas');

-- Inserção de Produtos
INSERT INTO Produtos (nome, preco, categoria_id) VALUES
('Notebook', 3500.00, 1),
('Livro Python', 120.00, 2),
('Sofá', 2500.00, 3),
('Camiseta', 50.00, 4),
('Chocolate', 10.00, 5),
('Shampoo', 15.00, 6),
('Bicicleta', 800.00, 7),
('Pneu de carro', 400.00, 8),
('Boneca', 70.00, 9),
('Martelo', 35.00, 10);

-- Inserção de Pedidos
INSERT INTO Pedidos (cliente_id, data_pedido) VALUES
(1, '2025-01-01'),
(2, '2025-01-02'),
(3, '2025-01-03'),
(4, '2025-01-04'),
(5, '2025-01-05'),
(6, '2025-01-06'),
(7, '2025-01-07'),
(8, '2025-01-08'),
(9, '2025-01-09'),
(10, '2025-01-10');

-- Inserção de Detalhes do Pedido
INSERT INTO Detalhes_Pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 5, 5),
(6, 6, 2),
(7, 7, 1),
(8, 8, 4),
(9, 9, 1),
(10, 10, 2);


SELECT CL.NOME, EMAIL, TELEFONE, DATA_PEDIDO, QUANTIDADE, PROD.NOME, PRECO FROM CLIENTES CL

INNER JOIN PEDIDOS PD ON CL.CLIENTE_ID = PD.CLIENTE_ID

INNER JOIN Detalhes_Pedido DP ON PD.PEDIDO_ID = DP.pedido_id

INNER JOIN PRODUTOS PROD ON DP.PRODUTO_ID = PROD.PRODUTO_ID

