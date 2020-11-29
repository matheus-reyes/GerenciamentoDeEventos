/*
Consulta 1
Os participantes palestrantes do evento A filiados à Universidade de São Paulo ganharão um brinde ao final da semana de atividades da 
instituição de ensino em agradecimento. Para validar, é necessário fazer uma busca dos CPFs de cada um deles que possuem um e-mail 
cadastrado no domínio USP (*usp.br).

Selecione o CPF dos participantes que são palestrantes e possuem e-mail com o domínio pertencente à USP.
*/
SELECT cpf, nome from participante
where Palestrante = 1 and e_mail like '%usp.br%';

/*
Consulta 2
Os patrocinadores do evento resolveram sortear alguns brindes para os participantes ouvintes que adquiriram seus ingressos no 1 ou 2 lote. 
Para a escolha dos brindes, é necessário obter a receita gerada por esses ingressos.

Qual foi a receita gerada pelos ingressos dos participantes que são ouvintes ou palestrantes que compraram o ingresso no primeiro ou segundo lote? 
*/
SELECT sum(valor) FROM lote, Participante
WHERE ouvinte = 1 OR palestrante = 1
AND numero_lote IN (1,2);

/*
Consulta 3
Uma das empresas organizadoras está passando por uma grave crise financeira e não conseguiu patrocínio para a maioria dos eventos realizados. Por 
isso, decidiu reduzir os custos com a folha de pagamento, definindo os seguintes critérios de seleção para as primeiras demissões: organizadores 
que não coordenam nenhum mobilizador de caravana, possuem tempo de contrato menor que 6 meses e possuem remuneração a partir de R$720,00.

Qual o cpf dos Organizadores que não coordenam nenhum mobilizador de caravana, possuem 
tempo de contrato menor do que 6 meses e possuem remuneração maior do que 720,00.
*/
SELECT DISTINCT organizador.cpf FROM organizador
LEFT JOIN mobilizador_caravana
on organizador.cpf = mobilizador_caravana.COO_CPF
where mobilizador_caravana.COO_CPF is null and organizador.cpf in
	(SELECT distinct organizador.cpf from contrata, organizador
	where datediff(data_fim, data_inicio) < 6*30 AND remuneracao >= 720.00);

/*
Consulta 4
Para conferir se o empréstimo de equipamentos está correto, a organizadora está fazendo um levantamento de atividades que possuam mais 
de 10 participantes ouvintes. Isso se deve ao fato de que, a partir de 11 participantes, será necessário um microfone e um sistema de som 
para que nenhum ouvinte se sinta prejudicado e para que o indivíduo que esteja apresentando também não fique prejudicado por falar muito alto.

Liste as atividades que possuam  mais de 10 ouvintes inscritos. 
*/
SELECT atividade.nome, COUNT(*) as participantes FROM atividade 
INNER JOIN INSCREVE ON atividade.codigo_atividade = INSCREVE.codigo_atividade
GROUP BY INSCREVE.codigo_atividade HAVING COUNT(*) > 10;

/*
Consulta 5
A empresa NOSSODINHEIRO está expandindo os negócios e abrirá uma filial no Nordeste, mais especificamente no Ceará. 
Para divulgar mais a empresa e atrair bons funcionários locais, a NOSSODINHEIRO está fazendo levantamento sobre eventos 
técnicos-científicos sediados no Nordeste para que possam atuar como patrocinadores. Além disso, a empresa também 
gostaria da informação sobre quais desses eventos possuem menos de 3 patrocinadores. 

Quais os nomes dos eventos que ocorrem presencialmente no Ceará e que possuem menos de 3 patrocinadores?
*/
SELECT DISTINCT Evento.id_evento, Evento.nome from evento 
INNER JOIN FAZ_LOCACAO ON evento.id_evento = FAZ_LOCACAO.id_evento
INNER JOIN Local_presencial on FAZ_LOCACAO.id_local = Local_presencial.id_local
INNER JOIN PATROCINA on PATROCINA.id_evento = evento.id_evento
where Local_presencial.end_estado like '%Ceará%'
GROUP BY PATROCINA.id_evento HAVING COUNT(*)<3;

/*
Consulta 6
Um dos participantes do evento foi inscrito de maneira incorreta no banco de dados, pois ele deveria ser apenas um ministrante_tutoria, mas foi 
inscrito também como palestrante. O problema, é que não se sabe quem era esse participante, apenas sabe-se que o seu sobrenome é “Pereira”. 
Então é necessário saber qual participante é um ministrante_tutoria, tem sobrenome “Pereira” e é também um palestrante, a fim de resolver essa 
incoerência no banco de dados.

Qual o nome completo e o cpf do participante que é um ministrante_tutoria, possui “Pereira” no seu nome e é também um palestrante?
*/
select ministrante.nome, ministrante.cpf from participante as ministrante
INNER JOIN ministrante_tutoria on ministrante.cpf = ministrante_tutoria.cpf
INNER JOIN palestrante on palestrante.cpf = ministrante.cpf
where nome like '%Pereira%';
