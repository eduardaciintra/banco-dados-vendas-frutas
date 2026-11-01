# banco-dados-vendas-frutas

Projeto de banco de dados em SQL feito na faculdade. Ele simula o registro de vendas de uma banca de frutas, ligando cada venda a uma fruta e a um vendedor.

## Visão geral

O projeto tem três tabelas:

- **Frutas:** código, nome e preço de cada fruta.
- **Vendedores:** código e nome de cada vendedor.
- **Vendas:** registra qual vendedor vendeu qual fruta, usando chaves estrangeiras para ligar as tabelas.

No final do arquivo há uma consulta com INNER JOIN que junta as três tabelas e mostra o nome da fruta e o do vendedor em cada venda.

## Tecnologias utilizadas

- SQL (MySQL)

## Como executar

1. Abra um editor de MySQL, como o MySQL Workbench ou um editor online.
2. Crie um banco de dados vazio e selecione ele para uso (se o editor não fizer isso sozinho).
3. Copie o conteúdo do arquivo vendas-frutas.sql, cole no editor e execute tudo.
4. A última consulta mostra o resultado das vendas.

## Resultado esperado

| id_vendas | fruta    | vendedor |
|-----------|----------|----------|
| 1         | Maçã     | Maria    |
| 2         | Uva      | João     |
| 3         | Melancia | Pedro    |

## O que aprendi

- Criar tabelas com chave primária.
- Relacionar tabelas com chave estrangeira.
- Inserir dados e juntar tabelas com INNER JOIN.

## Licença

Este projeto usa a licença MIT. Veja o arquivo LICENSE.
