Descrição dos Campos
Tabela Clientes
cliente_id: Identificador único do cliente.
nome: Nome completo do cliente.
email: Endereço de e-mail único do cliente.
telefone: Número de telefone de contato do cliente.
Tabela Categorias
categoria_id: Identificador único da categoria.
nome: Nome da categoria do produto.
Tabela Produtos
produto_id: Identificador único do produto.
nome: Nome do produto.
preco: Preço do produto.
categoria_id: Referência à categoria do produto, ligando à tabela Categorias.
Tabela Pedidos
pedido_id: Identificador único do pedido.
cliente_id: Referência ao cliente que realizou o pedido, ligando à tabela Clientes.
data_pedido: Data em que o pedido foi realizado.
Tabela Detalhes do Pedido
detalhe_id: Identificador único do detalhe do pedido.
pedido_id: Referência ao pedido correspondente, ligando à tabela Pedidos.
produto_id: Referência ao produto adquirido, ligando à tabela Produtos.
quantidade: Quantidade do produto adquirido no pedido.
