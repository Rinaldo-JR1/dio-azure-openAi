-- Criação da tabela "Produtos"
CREATE TABLE Produtos (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Produto VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);

-- Criação da tabela "Categorias"
CREATE TABLE Categorias (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Categoria VARCHAR(255) NOT NULL
);

-- Criação da tabela "Clientes"
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Email VARCHAR(255) NOT NULL
);

-- Criação da tabela "Pedidos"
CREATE TABLE Pedidos (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    Data_Pedido DATE NOT NULL,
    ID_Cliente INT,
    Total_Pedido DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Criação da tabela "Itens do Pedido"
CREATE TABLE Itens_Pedido (
    ID_Item_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pedido INT,
    ID_Produto INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
