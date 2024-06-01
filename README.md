
# Projeto de Análise de Dados Comp Júnior

## Descrição
- Esse projeto foi desenvolvido para o processo seletivo da Comp Júnior, com intuito de melhorar e demonstrar minhas habilidades na área ánalise de dados.


## Recursos
- O projeto é composto de 4 etapas, sendo elas Excel, SQL, Power BI e Python.
- Cada uma das etapas tinha perguntas de négocio individuais sobre alguns dados que nos foram enviados.

## Etapas

Descrição de cada etapa do projeto:

### 1. Excel
Foram enviadas 10 perguntas de négocio ou formatação, juntamente com os dados, em uma planilha que você pode encontrar [aqui](https://docs.google.com/spreadsheets/d/1aVX1cy3Jxpvos4M4y37QUEKFMgcYcOwO/edit?u%20sp=sharing#gid=217986317).

- Para as perguntas de formatação: foi utilizada a função substituir do excel.
- Para as perguntas de negócio: foram utilizadas de tabelas dinâmicas ou fórmulas simples de média e contagem.

Cada resposta está em uma página da [planilha de respostas](./respostas-pergunta-excel.xlsx).

### 2. SQL
Recebi os [dados](https://drive.google.com/file/d/1uI7qAjt6qJsh_V4IYUQ82y8Yr_OILTjQ/edit) em SqlLite e as seguintes perguntas:

1: Qual é a receita total gerada por categoria de produto?
Resposta: 

<img src="./Queries SQL/pergunta1/pergunta1output.png">

2: Qual é o tempo médio de entrega dos produtos, por estado?
Resposta:

<img src="./Queries SQL/pergunta2/pergunta2output.png">

3: Quais são os top 10 clientes em termos de valor gasto (aqueles
que gastaram mais)?
Resposta:

<img src="./Queries SQL/pergunta3/pergunta3output.png">

4: Qual a variação percentual das vendas mensais, comparado ao
mês anterior, por categoria?
Resposta:

<img src="./Queries SQL/pergunta4/pergunta4output.png">

5: Quais os 5 vendedores que têm o maior número de pedidos
cancelados? 
Resposta:

<img src="./Queries SQL/pergunta5/pergunta5output.png">

6: Quais os estados que tiveram a maior relação
“Número de Pedidos”/”Tempo médio de entrega”?
Resposta:

<img src="./Queries SQL/pergunta6/pergunta6output.png">


Para todas as perguntas foram criadas queries sql com seleções, uniões e agrupamentos básicos, buscando sempre uma tabela que respondêsse as perguntas.

### 2. Power BI
Utilizando os mesmos [dados](https://drive.google.com/file/d/1uI7qAjt6qJsh_V4IYUQ82y8Yr_OILTjQ/edit), foi feito um [dashboard](https://app.powerbi.com/view?r=eyJrIjoiNjljOTcyZDYtNWExYi00NDQ0LWI1NjItNjg0MzYyMGRhYzBjIiwidCI6IjkxZDViYjA2LTY5NzAtNDQ2OC1hZTRjLTZmZjRjYWY5OTQyMyJ9) em Power BI, com as seguintes exigências:

Gráficos
- Gráfico de Barras com as vendas totais por mês.
- Gráfico de Linhas com o valor do pedido médio (AOV - Average Order Value) ao longo do tempo.
- Gráfico de Pizza com o valor total de pedidos por gênero.
- Gráfico de linha com a performance de vendas por região ao longo do tempo. 
- Indicador com o total de vendas por ano.
- Indicador com a taxa média de frete.
- Indicador com o número total de produtos vendidos (quantidade de produtos vendidos).

Filtros
- Por Data (Seleção de intervalo de datas (dia, mês, ano))
- Por Categoria de Produto (lista dropdown)
- Por vendedor (lista dropdown com o nome ou ID dos vendedores) 
- Por região (lista dropdown com as regiões de entrega)

O dashboard final ficou com 3 cartões fixos,
correspondentes aos indicadores pedidos.  
Ele também conta com 6 seletores fixos, para cada um dos filtros.  
Os outros 4 gráficos, estão dividos em 3 páginas diferente do [dashboard](https://app.powerbi.com/view?r=eyJrIjoiNjljOTcyZDYtNWExYi00NDQ0LWI1NjItNjg0MzYyMGRhYzBjIiwidCI6IjkxZDViYjA2LTY5NzAtNDQ2OC1hZTRjLTZmZjRjYWY5OTQyMyJ9).  
  
O link público de acesso ao dashboard é:  
https://app.powerbi.com/view?r=eyJrIjoiNjljOTcyZDYtNWExYi00NDQ0LWI1NjItNjg0MzYyMGRhYzBjIiwidCI6IjkxZDViYjA2LTY5NzAtNDQ2OC1hZTRjLTZmZjRjYWY5OTQyMyJ9  


<img src="./images/pagina1dashboard.png">
<img src="./images/pagina2dashboard.png">
<img src="./images/pagina3dashboard.png">
