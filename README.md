Descrição do Banco de Dados
Este projeto contém a estrutura e descrição de um banco de dados relacional projetado para gerenciar informações sobre clientes, categorias de produtos, produtos, pedidos e detalhes dos pedidos. Abaixo estão as descrições detalhadas de cada tabela do banco de dados:

Tabela Clientes
Esta tabela armazena informações sobre os clientes.

cliente_id: Identificador único do cliente (Primary Key).
nome: Nome completo do cliente.
email: Endereço de e-mail único do cliente.
telefone: Número de telefone de contato do cliente.
Tabela Categorias
Esta tabela armazena as categorias dos produtos.

categoria_id: Identificador único da categoria (Primary Key).
nome: Nome da categoria do produto.
Tabela Produtos
Esta tabela contém informações sobre os produtos disponíveis.

produto_id: Identificador único do produto (Primary Key).
nome: Nome do produto.
preco: Preço do produto.
categoria_id: Referência à categoria do produto, ligando à tabela Categorias (Foreign Key).
Tabela Pedidos
Esta tabela registra os pedidos realizados pelos clientes.

pedido_id: Identificador único do pedido (Primary Key).
cliente_id: Referência ao cliente que realizou o pedido, ligando à tabela Clientes (Foreign Key).
data_pedido: Data em que o pedido foi realizado.
Tabela Detalhes do Pedido
Esta tabela detalha os produtos adquiridos em cada pedido.

detalhe_id: Identificador único do detalhe do pedido (Primary Key).
pedido_id: Referência ao pedido correspondente, ligando à tabela Pedidos (Foreign Key).
produto_id: Referência ao produto adquirido, ligando à tabela Produtos (Foreign Key).
quantidade: Quantidade do produto adquirido no pedido.



![image](https://github.com/user-attachments/assets/d5c368e4-edea-425b-a6f1-9ca4e2a8cf3e)
