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
SELECT DISTINCT organizador.cpf FROM organizador
LEFT JOIN mobilizador_caravana
on organizador.cpf = mobilizador_caravana.COO_CPF
where mobilizador_caravana.COO_CPF is null and organizador.cpf in
	(SELECT distinct organizador.cpf from contrata, organizador
	where datediff(data_fim, data_inicio) < 6*30 AND remuneracao >= 720.00);

/*
Liste as atividades que possuam  mais de 10 ouvintes inscritos. 
*/
SELECT atividade.nome, COUNT(*) FROM atividade 
INNER JOIN INSCREVE ON atividade.codigo_atividade = INSCREVE.codigo_atividade
GROUP BY INSCREVE.codigo_atividade HAVING COUNT(*) > 10;

/*
Quais os nomes dos eventos que ocorrem presencialmente no Ceará e que possuem menos de 3 patrocinadores?
*/
SELECT DISTINCT Evento.id_evento, Evento.nome from evento 
INNER JOIN FAZ_LOCACAO ON evento.id_evento = FAZ_LOCACAO.id_evento
INNER JOIN Local_presencial on FAZ_LOCACAO.id_local = Local_presencial.id_local
INNER JOIN PATROCINA on PATROCINA.id_evento = evento.id_evento
where Local_presencial.end_estado like '%Ceará%'
GROUP BY PATROCINA.id_evento HAVING COUNT(*)<3;

/*
Qual o nome completo e o cpf do participante que é um ministrante_tutoria, possui “Pereira” no seu nome e é também um palestrante?
*/
select ministrante.nome, ministrante.cpf from participante as ministrante
INNER JOIN ministrante_tutoria on ministrante.cpf = ministrante_tutoria.cpf
INNER JOIN palestrante on palestrante.cpf = ministrante.cpf
where nome like '%Pereira%';
