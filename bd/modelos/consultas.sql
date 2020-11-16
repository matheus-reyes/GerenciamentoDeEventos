/*
Selecione o CPF dos participantes que são palestrantes e possuem e-mail com o domínio pertencente à USP.
*/
SELECT cpf, nome from participante
where Palestrante = 1 and e_mail like '%usp.br%';

/*
Qual foi a receita gerada pelos ingressos dos participantes que são ouvintes ou palestrantes que compraram o ingresso no primeiro ou segundo lote? 
*/
SELECT sum(valor) FROM lote, Participante
WHERE ouvinte = 1 OR palestrante = 1
AND numero_lote IN (1,2);

/*
Qual o cpf e o nome dos Organizadores que não coordenam nenhum mobilizador de caravana, possuem 
tempo de contrato menor do que 6 meses e possuem remuneração maior do que 720,00.
*/
SELECT DISTINCT organizador.cpf, mobilizador_caravana.cpf FROM organizador
LEFT JOIN mobilizador_caravana
on organizador.cpf = mobilizador_caravana.COO_CPF;

SELECT distinct organizador.cpf from contrata, organizador
where datediff(data_fim, data_inicio) < 6*30 AND remuneracao > 720.00;


/*
Qual foi o balanço financeiro do evento 2 (“nome do evento aqui”)? Se o balanço for 
negativo, isto é, o valor de despesas supera o de receita, quais as movimentações 
(descrição e valor) que estão acima da média de gastos?
*/
