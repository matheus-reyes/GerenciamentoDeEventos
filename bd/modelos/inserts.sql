use eventos_cientificos;

/* Inserção Parte 1 */

/* Inserção Dados Entidade */

INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (37159434000115, "Avenida dos Imigrantes", "Bragança Paulista", "São Paulo", "12903-130", "150", "Promotora de Eventos S.A", "eventossa@contato.br", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (21246221000199, "Avenida Paulista", "São Paulo", "São Paulo", "03619-130", "100", "Promotora de Eventos SP", "eventossp@contato.br", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (84963187000151, "Rua das Maritacas", "Bragança Paulista", "São Paulo", "12903-160", "100", "Promotora Bragança Eventos", "brageventos@contato.br", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (19741351000141, "Rua Operação", "São Paulo", "São Paulo", "05655-130", "99", "Promotora Cubatão Eventos", "cubataoeventos@contato.br", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (39716013000120, "Rua Teresópolis", "Rio de Janeiro", "Rio de Janeiro", "94443-456", "37", "Promotora Confort Eventos", "conforteventos@contato.br", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (11524184000187, "Rua Almeida", "Rio de Janeiro", "Rio de Janeiro", "94446-446", "27", "Zalinha Eventos", "zalinhaventos@contato.br", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (29532264000178, "Avenida Operária", "São Paulo", "São Paulo", "03567-456", "17", "Zen Eventos", "zeneventos@contato.br", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (14578574000156, "Rua Hernandes", "São Paulo", "São Paulo", "05567-456", "493", "Dalaz Eventos", "dalazeventos@contato.br", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (27349772000111, "Rua Fernandópolis", "Fernandópolis", "São Paulo", "95867-456", "3793", "Biro Eventos", "biroeventos@contato.br", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) 
VALUES (07755256000158, "Rua Aparecida", "Rio de Janeiro", "Rio de Janeiro", "94443-434", "37562", "RJ Eventos", "rjeventos@contato.br", false, false, true);

/* Inserção Dados Promotora */

INSERT INTO promotora (cnpj) VALUES (37159434000115);
INSERT INTO promotora (cnpj) VALUES (21246221000199);
INSERT INTO promotora (cnpj) VALUES (84963187000151);
INSERT INTO promotora (cnpj) VALUES (19741351000141);
INSERT INTO promotora (cnpj) VALUES (39716013000120);

/* Inserção Dados Organizadora */

INSERT INTO organizadora (cnpj) VALUES (11524184000187);
INSERT INTO organizadora (cnpj) VALUES (29532264000178);
INSERT INTO organizadora (cnpj) VALUES (14578574000156);
INSERT INTO organizadora (cnpj) VALUES (27349772000111);
INSERT INTO organizadora (cnpj) VALUES (07755256000158);

/* Inserção Dados Evento */

INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES ("Nutricao", 26, "CONBRAN 2020 - XXVI Congresso Brasileiro de Nutrição", '2021-01-19', '2021-01-22', 11524184000187, 37159434000115);
INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES ("Computacao", 40, "XL Congresso da Sociedade Brasileira de Computação", '2020-11-16', '2020-11-20', 29532264000178, 21246221000199);
INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES ("Contabilidade", 1, "CONBCON - Congresso Online Brasileiro de Contabilidade", '2020-09-21', '2020-09-25', 14578574000156, 84963187000151);
INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES ("Direito", 34, "XXXIV Congresso Brasileiro de Direito Administrativo", '2020-11-04', '2020-11-07', 27349772000111, 19741351000141);
INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES ("Psicologia", 18, "XVIII Congresso Brasileiro do Sono", '2021-06-03', '2021-06-05', 07755256000158, 39716013000120);
INSERT INTO evento (tema, edicao, nome, data_inicio, data_fim, cnpj, PRO_cnpj) VALUES 
("Computacao", 6, "VI Evento de Computacao", '2021-01-19', '2021-01-22', 11524184000187, 37159434000115),
("Computacao", 16, "Semana de Sistemas de informação", '2020-11-16', '2020-11-20', 29532264000178, 21246221000199),
("Contabilidade", 44, "Congresso Brasileiro de Contabilidade", '2020-09-21', '2020-09-25', 14578574000156, 84963187000151),
("Direito", 26, "XXVI Congresso Brasileiro de Direito", '2020-11-04', '2020-11-07', 27349772000111, 19741351000141),
("Engenharia", 15, "XV Congresso Brasileiro do De Petróleo", '2021-06-03', '2021-06-05', 07755256000158, 39716013000120);

/* Inserção Dados Movimentacao_Financeira */

INSERT INTO movimentacao_financeira (tipo, descricao, valor_a_pagar, quantidade, id_evento) VALUES ("Despesa", "aluguel_local", 10.000, 1, 2);
INSERT INTO movimentacao_financeira (tipo, descricao, valor_a_pagar, quantidade, id_evento) VALUES ("Receita", "ingressos_pre_venda", 70, 100, 2);
INSERT INTO movimentacao_financeira (tipo, descricao, valor_a_pagar, quantidade, id_evento) VALUES ("Despesa", "premiacao_concurso", 1.000, 5, 2);
INSERT INTO movimentacao_financeira (tipo, descricao, valor_a_pagar, quantidade, id_evento) VALUES ("Despesa", "aluguel_cadeiras", 3.000, 1.000, 2);
INSERT INTO movimentacao_financeira (tipo, descricao, valor_a_pagar, quantidade, id_evento) VALUES ("Receita", "ingresos_primeiro_lote", 80, 200, 2);

/* Inserção Dados Nota_Fiscal */

INSERT INTO nota_fiscal (codigo_movimentacao, cnpj_emissor, nome_razao_social, inscricao_municipal, codigo_verificacao, valor, data_emissao) VALUES (1, 15461510000133, "Universidade Federal de Mato Grosso", 79241589, "WCA-7MKD", 10.000, '2020-09-15');
INSERT INTO nota_fiscal (codigo_movimentacao, cnpj_emissor, nome_razao_social, inscricao_municipal, codigo_verificacao, valor, data_emissao) VALUES (2, 21246221000199, "Promotora Root", 25416899, "PKE-5BDE", 7.000, '2020-04-25');
INSERT INTO nota_fiscal (codigo_movimentacao, cnpj_emissor, nome_razao_social, inscricao_municipal, codigo_verificacao, valor, data_emissao) VALUES (3, 15436940000103, "Amazon", 29871659, "WKY-7LBJ", 1.000, '2020-09-09');
INSERT INTO nota_fiscal (codigo_movimentacao, cnpj_emissor, nome_razao_social, inscricao_municipal, codigo_verificacao, valor, data_emissao) VALUES (4, 16428221000140, "Cadeiras Conforto", 24539811, "KFD-DFW",3.000, '2020-09-10');
INSERT INTO nota_fiscal (codigo_movimentacao, cnpj_emissor, nome_razao_social, inscricao_municipal, codigo_verificacao, valor, data_emissao) VALUES (5, 21246221000199, "Promotora Root", 25416899, "CDG-4RFD", 16.000, '2020-09-25');

/* Inserção Dados Local */

INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("YouTube", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Universidade Federal de Mato Grosso", 10.000, false, true);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Google Meets", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("YouTube", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Centro de Convenções Frei Caneca", 20.000, false, true);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Twitch", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Zoom", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Pavilhão Anhembi", 20.000, false, true);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("São Paulo Expo", 20.000, false, true);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Expo Center Norte", 20.000, false, true);
INSERT INTO Local (nome, valor_locacao, Local_online, Local_presencial) VALUES
 ("Universidade Federal do Ceará", 0, false, true),
 ("Universidade Federal de Alagoas", 0, false, true),
 ("Centro de Eventos do Ceará", 1000, false, true),
 ("Universidade Federal de Sergipe", 25, false, true),
 ("Fundação Oswaldo Cruz - Ceará", 0, false, true);
 
/* Inserção Dados Local_Presencial */

INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (2, "Rua Quarenta e Nove - Boa Esperança", "Cuiabá", "Mato Grosso", "78060-900", "2367", 1000, 149.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (5, "Rua Frei Caneca - Consolação", "São Paulo", "São Paulo", "01307-001", "569", 3800, 10.500);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (8, "Avenida Olavo Fontoura - Santana", "São Paulo", "São Paulo", "02012-021", "1209", 30000, 100.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (9, "Rod. dos Imigrantes - Vila Água Funda", "São Paulo", "São Paulo", "04329-900", "1,5", 7810, 14.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (10, "Rua José Bernardo Pinto - Vila Guilherme", "São Paulo", "São Paulo", "02055-000", "333", 4500, 98.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES 
(11, "Avenida da Universidade", "Fortaleza", "Ceará", "06640-450", "2853", 1200, 259.000),
(12, "Av. Lourival Melo Mota", "Maceió", "Alagoas", "45807-001", "1000", 3800, 1400),
(13, "Av. Washington Soares", "Fortaleza", "Ceará", "25982-741", "999", 30000, 100.000),
(14, "Av. Marechal Rondon", "Maceió", "Alagoas", "65129-954", "15", 7810, 14.000),
(15, "Rua São José", "Fortaleza", "Ceará", "05544-201", "3240", 4500, 98.000);

/* Inserção Dados Local_Online */

INSERT INTO local_online (id_local, url) VALUES (1, "https://www.youtube.com/watch?v=WmKrw7pT-7s");
INSERT INTO local_online (id_local, url) VALUES (3, "https://meet.google.com/amc-jtyw-rel");
INSERT INTO local_online (id_local, url) VALUES (4, "https://www.youtube.com/watch?v=YhTry7pT-6r");
INSERT INTO local_online (id_local, url) VALUES (6, "http://twitch.tv/congresso_jogos");
INSERT INTO local_online (id_local, url) VALUES (7, "https://us02web.zoom.us/j/82815666367?pwd=RDVnYUR5Um54b0pmUGVCYjRWRklFdz09");

/* Inserção Dados Faz_Locacao */

INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES (1, 1, '2021-01-19', '2021-01-22', 500, 1);
INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES (2, 2, '2020-11-16', '2020-11-20', 10.000, 2);
INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES (3, 3, '2020-09-21', '2020-09-25', 500, 3);
INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES (4, 4, '2020-11-04', '2020-11-07', 500, 4);
INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES (5, 5, '2021-06-03', '2021-06-05', 20.000, 5);
INSERT INTO faz_locacao (id_contrato, id_evento, data_inicio, data_fim, valor, id_local) VALUES 
(6, 6, '2020-05-19', '2021-01-22', 5000, 11),
(7, 7, '2019-04-19', '2021-02-05', 550, 12),
(8, 8, '2020-11-19', '2021-12-14', 0, 13),
(9, 9, '2021-09-19', '2022-10-25', 40, 14),
(10, 10, '2021-07-19', '2022-04-02', 555, 15);

/* Inserção Dados Local_Atividade */

INSERT INTO local_atividade (nome, capacidade, id_local) VALUES ("Sala 121", 70, 2);
INSERT INTO local_atividade (nome, capacidade, id_local) VALUES ("Sala 122", 70, 2);
INSERT INTO local_atividade (nome, capacidade, id_local) VALUES ("Auditório Azul", 200, 2);
INSERT INTO local_atividade (nome, capacidade, id_local) VALUES ("Auditório Verde", 250, 2);
INSERT INTO local_atividade (nome, capacidade, id_local) VALUES ("Laboratório 13", 70, 2);

/* Inserção Dados Equipamento */

INSERT INTO equipamento (nome, valor, codigo_local) VALUES ("Microfone", 400, 3);
INSERT INTO equipamento (nome, valor, codigo_local) VALUES ("Microfone", 400, 4);
INSERT INTO equipamento (nome, valor, codigo_local) VALUES ("Computador", 3.000, 5);
INSERT INTO equipamento (nome, valor, codigo_local) VALUES ("Projetor", 700, 1);
INSERT INTO equipamento (nome, valor, codigo_local) VALUES ("Projetor", 700, 2);

/* Inserção Dados Atividade */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop Inteligência Artificial com Sistemas HPCC", 2, "Workshop");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Sessão de Artigos sobre Machine Learning", 2, "Sessão_Artigo");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Palestra: Deep Learning no dia a dia ", 2, "Palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Palestra: Arquitetura de Super Computadores", 2, "Palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop Computação Quântica", 2, "Workshop");

/* Inserção Dados Sessao */

INSERT INTO sessao (data_inicio, data_fim, codigo_atividade, codigo_local) VALUES ('2020-11-16', '2020-11-16', 1, 1);
INSERT INTO sessao (data_inicio, data_fim, codigo_atividade, codigo_local) VALUES ('2020-11-18', '2020-11-18', 2, 2);
INSERT INTO sessao (data_inicio, data_fim, codigo_atividade, codigo_local) VALUES ('2020-11-20', '2020-11-20', 3, 3);
INSERT INTO sessao (data_inicio, data_fim, codigo_atividade, codigo_local) VALUES ('2020-11-19', '2020-11-19', 4, 4);
INSERT INTO sessao (data_inicio, data_fim, codigo_atividade, codigo_local) VALUES ('2020-11-17', '2020-11-20', 5, 5);

/* Inserção Dados Utiliza. */

INSERT INTO utiliza (codigo_atividade, codigo_equipamento, quantidade) VALUES (3, 1, 3);
INSERT INTO utiliza (codigo_atividade, codigo_equipamento, quantidade) VALUES (4, 2, 3);
INSERT INTO utiliza (codigo_atividade, codigo_equipamento, quantidade) VALUES (5, 3, 20);
INSERT INTO utiliza (codigo_atividade, codigo_equipamento, quantidade) VALUES (1, 4, 1);
INSERT INTO utiliza (codigo_atividade, codigo_equipamento, quantidade) VALUES (2, 5, 1);

/* Inserção Parte 2 */

/* Inserção Dados Atividade - atividade social */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Jantar beneficente", 2, "Atividade_social");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Distribuição de brindes tecnológicos", 2, "Atividade_social");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Coffe Break analitico", 3, "Atividade_social");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Coquetel de abertura", 2, "Atividade_social");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Coquetel de encerramento com brindes", 2, "Atividade_social");

/* Inserção Dados Atividade_social */
INSERT INTO atividade_social (codigo_atividade, tipo, valor_convite) VALUES (6, "Jantar beneficente", 10);
INSERT INTO atividade_social (codigo_atividade, tipo, valor_convite) VALUES (7, "Espaço do patrocinador", 0);
INSERT INTO atividade_social (codigo_atividade, tipo, valor_convite) VALUES (8, "Coffee break", 5);
INSERT INTO atividade_social (codigo_atividade, tipo, valor_convite) VALUES (9, "Coquetel", 10);
INSERT INTO atividade_social (codigo_atividade, tipo, valor_convite) VALUES (10, "Coquetel", 10);

/* Inserção Dados Atividade - reuniao  */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Elementos constituintes do ovo", 1, "reuniao");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Impostos e regulação fiscal", 3, "reuniao");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Modelos de Inteligência Artificial e Ética", 2, "reuniao");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Objetivos da computação quântica", 2, "reuniao");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Financiamento de um supercomputador brasileiro", 2, "reuniao");

/* Inserção Dados reuniao  */

INSERT INTO reuniao (codigo_atividade, objetivo) VALUES (11, "Discutir a composição do ovo");
INSERT INTO reuniao (codigo_atividade, objetivo) VALUES (12, "Discutir uma nova regulação fiscal");
INSERT INTO reuniao (codigo_atividade, objetivo) VALUES (13, "Discutir o papel da ética nos modelos de IA");
INSERT INTO reuniao (codigo_atividade, objetivo) VALUES (14, "Fomentar a discussao sobre computação quântica");
INSERT INTO reuniao (codigo_atividade, objetivo) VALUES (15, "Discutir o financiamento para um supercomputador brasileiro");

/* Inserção participantes_reuniao */

INSERT INTO participantes_reuniao (codigo_atividade, nome_participante) VALUES (13, "Naruto Uzumaki");
INSERT INTO participantes_reuniao (codigo_atividade, nome_participante) VALUES (13, "Gracyane Barbosa");
INSERT INTO participantes_reuniao (codigo_atividade, nome_participante) VALUES (13, "Chris Rock");
INSERT INTO participantes_reuniao (codigo_atividade, nome_participante) VALUES (13, "Rochelle Rock");
INSERT INTO participantes_reuniao (codigo_atividade, nome_participante) VALUES (13, "Tonya Rock");

/* Inserção Dados Atividade - sessao_artigo  */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Nutrição e coronavirus", 1, "sessao_artigo");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Lei orçamentaria", 3, "sessao_artigo");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Produção científica sobre sistemas complexos", 2, "sessao_artigo");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Papel da tecnologia na pandemia", 2, "sessao_artigo");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Apresentação dos artigos produzidos pelo Programa de Pós-Graduação em SI", 2, "sessao_artigo");

/* Inserção sessão_artigo */

INSERT INTO sessao_artigo (codigo_atividade, tipo, numero_sessoes, responsavel) VALUES (16, "nutrição", 1, "Marcelo Ribeiro");
INSERT INTO sessao_artigo (codigo_atividade, tipo, numero_sessoes, responsavel) VALUES (17, "Finanças publicas", 1, "Renata Flores");
INSERT INTO sessao_artigo (codigo_atividade, tipo, numero_sessoes, responsavel) VALUES (18, "Computação", 1, "Vitoria Regia");
INSERT INTO sessao_artigo (codigo_atividade, tipo, numero_sessoes, responsavel) VALUES (19, "Computação", 1, "Gisele Silva");
INSERT INTO sessao_artigo (codigo_atividade, tipo, numero_sessoes, responsavel) VALUES (20, "PPG-SI", 1, "Joao Marx");

/* Inserção Dados comite */
INSERT INTO comite_programa(id_comite) VALUES (1);
INSERT INTO comite_programa(id_comite) VALUES (2);
INSERT INTO comite_programa(id_comite) VALUES (3);
INSERT INTO comite_programa(id_comite) VALUES (4);
INSERT INTO comite_programa(id_comite) VALUES (5);

/* Inserção Dados artigo */

INSERT INTO artigo (titulo, DOI, revista_publicacao, id_comite) VALUES ("O impacto da tecnologia no mundo atual", "D55235CBANC", "New England Journal", 1);
INSERT INTO artigo (titulo, DOI, revista_publicacao, id_comite) VALUES ("Descobrindo caminhos na computação", "94RHFJFJKCO", "Revista Brasileira de Computação", 1);
INSERT INTO artigo (titulo, DOI, revista_publicacao, id_comite) VALUES ("Aumento do processamento vs desempenho", "OE974YBNOAQOP", "Nature", 1);
INSERT INTO artigo (titulo, DOI, revista_publicacao, id_comite) VALUES ("A vida de um cientista moderno", "BDHFI3750RJM", "Jornal Brasileiro de Tecnologia", 1);
INSERT INTO artigo (titulo, DOI, revista_publicacao, id_comite) VALUES ("Demanda por desenvolvedores durante a pandemia", "H3546DKVHSJDO", "Jornal Brasileiro de Ciencia de Dados", 1);

/* Inserção Dados apresentado_em */

INSERT INTO apresentado_em (DOI, codigo_atividade) VALUES ("D55235CBANC", 20);
INSERT INTO apresentado_em (DOI, codigo_atividade) VALUES ("94RHFJFJKCO", 20);
INSERT INTO apresentado_em (DOI, codigo_atividade) VALUES ("OE974YBNOAQOP", 20);
INSERT INTO apresentado_em (DOI, codigo_atividade) VALUES ("BDHFI3750RJM", 20);
INSERT INTO apresentado_em (DOI, codigo_atividade) VALUES ("H3546DKVHSJDO", 20);

/* Inserção Dados Atividade - workshop  */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop: alimentação saudavel", 1, "workshop");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Imposto de renda", 3, "workshop");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop: Inteligência Artificial", 2, "workshop");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop: IoT na modernidade", 2, "workshop");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Workshop: mercado de TI", 2, "workshop");

/* Inserção workshop */

INSERT INTO workshop (codigo_atividade, valor_inscricao, tema, publico_alvo) VALUES (21, 250, "Como ter uma alimentação saudável atualmente", "Geral");
INSERT INTO workshop (codigo_atividade, valor_inscricao, tema, publico_alvo) VALUES (22, 120, "Como declarar o imposto de renda", "Adultos");
INSERT INTO workshop (codigo_atividade, valor_inscricao, tema, publico_alvo) VALUES (23, 250, "Imersão na inteligência Artificial", "Cientistas de dados");
INSERT INTO workshop (codigo_atividade, valor_inscricao, tema, publico_alvo) VALUES (24, 120, "IoT na modernidade", "Adultos");
INSERT INTO workshop (codigo_atividade, valor_inscricao, tema, publico_alvo) VALUES (25, 150, "Soft skills para o mercado em TI", "Geral");

/* Inserção Dados Atividade - concurso  */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Concurso: melhor receita com beringela", 1, "concurso");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Concurso: melhor receita vegana", 1, "concurso");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Concurso: Visualização de dados", 2, "concurso");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Concurso: Desenvolver um site novo para a Sociedade Brasileira de Computação", 2, "concurso");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Concurso: crianças programadoras", 2, "concurso");

/* Inserção Dados concurso  */

INSERT INTO concurso (codigo_atividade, tema) VALUES (26, "Receita com beringela");
INSERT INTO concurso (codigo_atividade, tema) VALUES (27, "Receitas veganas");
INSERT INTO concurso (codigo_atividade, tema) VALUES (28, "Construindo visualizações para dados de reembolsos de alimentação dos deputados federais");
INSERT INTO concurso (codigo_atividade, tema) VALUES (29, "Criando um novo site para a Sociedade Brasileira de Computação");
INSERT INTO concurso (codigo_atividade, tema) VALUES (30, "Gincana de algoritmos básicos para crianças");

/* Inserção Dados premiacao_concurso  */

INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (28, "Console PS5", 1);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (28, "Ipad", 2);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (28, "Us$100", 3);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (29, "Macbook air", 1);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (29, "Us$200", 2);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (30, "Console PS5", 1);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (30, "Console PS4", 2);
INSERT INTO premiacao_concurso (codigo_atividade, premio, colocacao) VALUES (30, "Tablet Samsumg", 3);

/* Inserção Dados participantes_concurso  */

INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Amanda Silva");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Beatriz Viveiros");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Gracyane Barbosa");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Eloisa Mendes");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Noemia Silva");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Jonas Serafim");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Fatima Bernardes");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Adolfo Ferreira");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (28, "Ana Maria Braga");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (29, "Dorime Maria Souza");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (29, "Olivia Pope");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (29, "Jair Eustaquio");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Pedro Cabral");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Guilherme Boulos");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Enzo Bonner");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Otavio Fernandes");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Moises Felipe");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Marina Rosa");
INSERT INTO participantes_concurso (codigo_atividade, nome_participante) VALUES (30, "Eduardo Souza");

/* Inserção Dados regras_concurso  */

INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (28, "Critério de desempate: votação online nas redes sociais do evento");
INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (29, "Será avaliado o melhor layout, de acordo com os juízes");
INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (29, "Critério de desempate: votação online nas redes sociais do evento");
INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (30, "Apenas crianças de até 12 anos");
INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (30, "Critério de desempate: o primeiro a responder a pergunta final");
INSERT INTO regras_concurso (codigo_atividade, regra) VALUES (30, "Participação deve ser utorizada pelos pais ou responsáveis");

/* Inserção Dados Atividade - tutoria  */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Tutoria: aprendendo a cozinhar legumes", 1, "tutoria");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Tutoria: Criando seu primeiro chatbot", 2, "tutoria");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Tutoria: Limpeza e preparação de dados", 2, "tutoria");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Aprenda a usar o Git e Github", 2, "tutoria");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Tutoria: arduíno na prática", 2, "tutoria");

/* Inserção tutoria */

INSERT INTO tutoria (codigo_atividade, valor_inscricao, tema, publico_alvo)  VALUES (31, 15, "Aprenda a cozinhar diversos legumes", "Geral" );
INSERT INTO tutoria (codigo_atividade, valor_inscricao, tema, publico_alvo)  VALUES (32, 20, "Aprendendo fazer um chatbot no Telegram", "Conhecimento básico em programação" );
INSERT INTO tutoria (codigo_atividade, valor_inscricao, tema, publico_alvo)  VALUES (33,  1, "Limpeza e preparação dos dados na prática", "Geral" );
INSERT INTO tutoria (codigo_atividade, valor_inscricao, tema, publico_alvo)  VALUES (34, 50, "Aprendendo a usar o Git - Github", "Conhecimento básico em programação");
INSERT INTO tutoria (codigo_atividade, valor_inscricao, tema, publico_alvo)  VALUES (35, 60, "Arduíno na prática", "Conhecimento básico em programação");

/* Inserção Dados Atividade - palestra */

INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Palestra: agronegócio e alimentação saudavel", 1, "palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Palestra: mudanças tecnológicas", 2, "palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Perspectivas tecnológicas para o futuro", 2, "palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("O impacto dos dados nas decisões corporativas", 2, "palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Visão computacional", 2, "palestra");

/* Inserção Palestra */

INSERT INTO palestra (codigo_atividade, descricao, publico_alvo) VALUES (36, "A relação do agronegócio e da alimentação saudável", "Geral");
INSERT INTO palestra (codigo_atividade, descricao, publico_alvo) VALUES (37, "Mudanças nas tecnologias atuais", "Computação");
INSERT INTO palestra (codigo_atividade, descricao, publico_alvo) VALUES (38, "Previsões das tecnologias do futuro", "Computação");
INSERT INTO palestra (codigo_atividade, descricao, publico_alvo) VALUES (39, "Dados no mundo corporativo", "Cientistas de Dados");
INSERT INTO palestra (codigo_atividade, descricao, publico_alvo) VALUES (40, "Visão na Computação", "Computação");

/* Inserção Parte 3 */

/* Inserção Dados Participante - Ouvinte e Palestrante */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Kleberson Gonçalves", 43269456701, 34504231, "kleberson@contato.com", 458490931, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Adelia Silva", 43269456702, 34504232, "adelia@contato.com", 458490932, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Matheus Felix", 43269456703, 34504233, "matheus@contato.com", 458490933, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Dayane Silva", 43269456704, 34504234, "dayane@contato.com", 458490934, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Ricardo Pereira", 43269456705, 34504235, "Ricardo@contato.com", 458490935, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bianca Dias", 62207591338, 01014001, "biancadias@usp.br", 996324472, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helena Matsuda", 35712439866, 01015001, "hmatsuda@usp.br", 981650032, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Luciana Karmizec", 39720465821, 01679001, "karmizec@usp.br", 945459966, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernando Alburqueque", 29169407291, 01027001, "fernando.alburqueque@usp.br", 997246684, false, true, true, false, false, false, false, false);

/* Inserção Dados Palestrante */

INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456701, "DEFREX", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456702, "FLY", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456703, "FREG", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456704, "XIAM", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456705, "AMAZIN", "minicurriculo.pdf");

/* Inserção Dados Participante - Ouvinte e Instrutor */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Kleber Silva", 43269456706, 34504236, "kleber@contato.com", 458490936, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Marjure Gonçalves", 43269456707, 34504237, "marjure@contato.com", 458490937, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("André Felix", 43269456708, 34504238, "andre@contato.com", 458490938, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Victoria Silva", 43269456709, 34504239, "victoria@contato.com", 458490939, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Reginaldo Pereira", 43269456710, 34504240, "Reginaldo@contato.com", 458490940, false, false, true, false, false, true, false, false);

/* Inserção Dados Instrutor */

INSERT INTO instrutor (cpf) VALUES (43269456706);
INSERT INTO instrutor (cpf) VALUES (43269456707);
INSERT INTO instrutor (cpf) VALUES (43269456708);
INSERT INTO instrutor (cpf) VALUES (43269456709);
INSERT INTO instrutor (cpf) VALUES (43269456710);

/* Inserção Dados Participante - Staff */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Amanda Silva", 43269456711, 34504241, "amanda@contato.com", 458490941, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Adriana Gonçalves", 43269456712, 34504242, "adriana@contato.com", 458490942, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bianca Felix", 43269456713, 34504243, "bianca@contato.com", 458490943, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Barbara Silva", 43269456714, 34504244, "barbara@contato.com", 458490944, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bruna Pereira", 43269456715, 34504245, "bruna@contato.com", 458490945, true, false, false, false, false, false, false, false);

/* Inserção Dados Staff */

INSERT INTO staff (cpf) VALUES (43269456711);
INSERT INTO staff (cpf) VALUES (43269456712);
INSERT INTO staff (cpf) VALUES (43269456713);
INSERT INTO staff (cpf) VALUES (43269456714);
INSERT INTO staff (cpf) VALUES (43269456715);

/* Inserção Dados Participante - Organizador */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Carol Silva", 43269456716, 34504246, "carol@contato.com", 458490946, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Eduardo Gonçalves", 43269456717, 34504247, "eduardo@contato.com", 458490947, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Eduarda Felix", 43269456718, 34504248, "eduarda@contato.com", 458490948, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Edmundo Silva", 43269456719, 34504249, "edmundo@contato.com", 458490949, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Felipe Pereira", 43269456720, 34504250, "felipe@contato.com", 458490950, false, false, false, true, false, false, false, false);

/* Inserção Dados Participante - Ministrante_tutoria */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Felix Silva", 43269456721, 34504251, "felix@contato.com", 458490951, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernando Gonçalves", 43269456722, 34504252, "fernando@contato.com", 458490952, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernanda Felix", 43269456723, 34504253, "fernanda@contato.com", 458490953, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fátima Silva", 43269456724, 34504254, "fátima@contato.com", 458490954, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fagner Pereira", 43269456725, 34504255, "fagner@contato.com", 458490955, false, false, false, false, true, false, false, false);

/* Inserção Dados Ministrante_Tutoria */

INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456721, "DEFREX", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456722, "LOTHOZ", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456723, "DANFREX", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456724, "FETIZ", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456725, "XIETEX", "minicurriculo.pdf");

/* Inserção Dados Participante - avaliador */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gabriel Silva", 43269456726, 34504256, "gabriel@contato.com", 458490956, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gabriela Gonçalves", 43269456727, 34504257, "gabriela@contato.com", 458490957, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gustavo Felix", 43269456728, 34504258, "gustavo@contato.com", 458490958, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Giovanna Silva", 43269456729, 34504259, "giovanna@contato.com", 458490959, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Giovanne Pereira", 43269456730, 34504260, "giovanne@contato.com", 458490960, false, false, false, false, false, false, true, false);

/* Inserção Avaliador */

INSERT INTO avaliador (cpf) VALUES (43269456726);
INSERT INTO avaliador (cpf) VALUES (43269456727);
INSERT INTO avaliador (cpf) VALUES (43269456728);
INSERT INTO avaliador (cpf) VALUES (43269456729);
INSERT INTO avaliador (cpf) VALUES (43269456730);

/* Inserção Dados Participante - Ouvinte e Autor_Artigo */

INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Hannah Silva", 43269456731, 34504261, "hannah@contato.com", 458490961, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helise Gonçalves", 43269456732, 34504262, "helise@contato.com", 458490962, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Heliana Felix", 43269456733, 34504263, "heliana@contato.com", 458490963, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helio Silva", 43269456734, 34504264, "helio@contato.com", 458490964, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Ian Pereira", 43269456735, 34504265, "ian@contato.com", 458490965, false, false, true, false, false, false, false, true);

/* Inserção Dados Autor_Artigo */

INSERT INTO autor_artigo (cpf, minicurriculo) VALUES (43269456731, "minicurriculo.pdf");
INSERT INTO autor_artigo (cpf, minicurriculo) VALUES (43269456732, "minicurriculo.pdf");
INSERT INTO autor_artigo (cpf, minicurriculo) VALUES (43269456733, "minicurriculo.pdf");
INSERT INTO autor_artigo (cpf, minicurriculo) VALUES (43269456734, "minicurriculo.pdf");
INSERT INTO autor_artigo (cpf, minicurriculo) VALUES (43269456735, "minicurriculo.pdf");

/* Inserção Dados Ouvinte */

INSERT INTO ouvinte (cpf) VALUES (43269456701);
INSERT INTO ouvinte (cpf) VALUES (43269456702);
INSERT INTO ouvinte (cpf) VALUES (43269456703);
INSERT INTO ouvinte (cpf) VALUES (43269456704);
INSERT INTO ouvinte (cpf) VALUES (43269456705);
INSERT INTO ouvinte (cpf) VALUES (43269456706);
INSERT INTO ouvinte (cpf) VALUES (43269456707);
INSERT INTO ouvinte (cpf) VALUES (43269456708);
INSERT INTO ouvinte (cpf) VALUES (43269456709);
INSERT INTO ouvinte (cpf) VALUES (43269456710);
INSERT INTO ouvinte (cpf) VALUES (43269456731);
INSERT INTO ouvinte (cpf) VALUES (43269456732);
INSERT INTO ouvinte (cpf) VALUES (43269456733);
INSERT INTO ouvinte (cpf) VALUES (43269456734);
INSERT INTO ouvinte (cpf) VALUES (43269456735);

/* Inserção Dados Inscreve (Relação N-N entre Ouvinte e Atividade) */

INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (2 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (3 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (4 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (5 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (6 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (8 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (9 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (12 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (13 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (14 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (15 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (16 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (17 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (18 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (19 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (21 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (23 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (24 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (25 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (26 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (28 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (31 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (32 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (34 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (35 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (36 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (37 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (38 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (2 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (3 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (4 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (5 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (6 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (8 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (9 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (12 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (13 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (14 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (15 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (16 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (17 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (18 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (19 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (21 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (23 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (24 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (25 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (26 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (28 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (31 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (32 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (34 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (35 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (36 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (37 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (38 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (2 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (3 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (4 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (5 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (6 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (8 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (9 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (12 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (13 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (14 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (15 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (16 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (17 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (18 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (19 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (21 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (23 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (24 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (25 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (26 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (28 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (31 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (32 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (34 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (35 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (36 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (37 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (38 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456735);

/* Inserção Dados Organiza (Relação entre Staff e Atividade) */

INSERT INTO organiza (codigo_atividade, cpf) VALUES (1 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (2 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (3 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (4 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (5 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (6 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (7 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (8 , 43269456711);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (9 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (10 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (11 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (12 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (13 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (14 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (15 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (16 , 43269456712);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (17 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (18 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (19 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (20 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (21 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (22 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (23 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (24 , 43269456713);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (25 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (26 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (27 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (28 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (29 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (30 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (31 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (32 , 43269456714);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (33 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (34 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (35 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (36 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (37 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (38 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (39 , 43269456715);
INSERT INTO organiza (codigo_atividade, cpf) VALUES (40 , 43269456715);

/* Inserção Dados Apresenta (Relação entre Palestrante e Palestra) */

INSERT INTO apresenta (codigo_atividade, cpf) VALUES (36 , 43269456701);
INSERT INTO apresenta (codigo_atividade, cpf) VALUES (37 , 43269456702);
INSERT INTO apresenta (codigo_atividade, cpf) VALUES (38 , 43269456703);
INSERT INTO apresenta (codigo_atividade, cpf) VALUES (39 , 43269456704);
INSERT INTO apresenta (codigo_atividade, cpf) VALUES (40 , 43269456705);

/* Inserção Dados Ministra (Relação entre Ministrante_tutoria e Tutoria) */

INSERT INTO ministra (codigo_atividade, cpf) VALUES (31, 43269456721);
INSERT INTO ministra (codigo_atividade, cpf) VALUES (32, 43269456722);
INSERT INTO ministra (codigo_atividade, cpf) VALUES (33, 43269456723);
INSERT INTO ministra (codigo_atividade, cpf) VALUES (34, 43269456724);
INSERT INTO ministra (codigo_atividade, cpf) VALUES (35, 43269456725);

/* Inserção Dados Conduz (Relação entre instrutor e workshop) */

INSERT INTO conduz (codigo_atividade, cpf) VALUES (21, 43269456706);
INSERT INTO conduz (codigo_atividade, cpf) VALUES (22, 43269456707);
INSERT INTO conduz (codigo_atividade, cpf) VALUES (23, 43269456708);
INSERT INTO conduz (codigo_atividade, cpf) VALUES (24, 43269456709);
INSERT INTO conduz (codigo_atividade, cpf) VALUES (25, 43269456710);

/* Inserção Dados Julga (Relação entre avaliador e concurso) */

INSERT INTO julga (codigo_atividade, cpf) VALUES (26, 43269456726);
INSERT INTO julga (codigo_atividade, cpf) VALUES (27, 43269456727);
INSERT INTO julga (codigo_atividade, cpf) VALUES (28, 43269456728);
INSERT INTO julga (codigo_atividade, cpf) VALUES (29, 43269456729);
INSERT INTO julga (codigo_atividade, cpf) VALUES (30, 43269456730);

/* Inserção Dados Publica (Relação entre Autor_artigo e artigo) */

INSERT INTO publica (cpf, DOI) VALUES (43269456731, "94RHFJFJKCO");
INSERT INTO publica (cpf, DOI) VALUES (43269456732, "BDHFI3750RJM");
INSERT INTO publica (cpf, DOI) VALUES (43269456733, "D55235CBANC");
INSERT INTO publica (cpf, DOI) VALUES (43269456734, "H3546DKVHSJDO");
INSERT INTO publica (cpf, DOI) VALUES (43269456735, "OE974YBNOAQOP");

/* Inserção Parte 4 */

/*Certificado*/

INSERT INTO certificado(numero_certificado, titulo, cpf, descricao, carga_horaria, data_emissao, cnpj) VALUES (12345677, 'Certificado de Participação', 43269456701, 'Certificado que prova a particação no evento "CONBRAN 2020 - XXVI Congresso Brasileiro de Nutrição"', 6 , '2021-01-22', 11524184000187);
INSERT INTO certificado(numero_certificado, titulo, cpf, descricao, carga_horaria, data_emissao, cnpj) VALUES (12345678, 'Certificado de Participação', 43269456702, 'Certificado que prova a particação no evento "XL Congresso da Sociedade Brasileira de Computação"', 6 , '2020-11-20', 11524184000187);
INSERT INTO certificado(numero_certificado, titulo, cpf, descricao, carga_horaria, data_emissao, cnpj) VALUES (01234567, 'Certificado de Participação', 43269456703, 'Certificado que prova a particação no evento "CONBCON - Congresso Online Brasileiro de Contabilidade"', 6 , '2020-09-25', 11524184000187);
INSERT INTO certificado(numero_certificado, titulo, cpf, descricao, carga_horaria, data_emissao, cnpj) VALUES (23456781, 'Certificado de Participação', 43269456704, 'Certificado que prova a particação no evento "XXXIV Congresso Brasileiro de Direito Administrativo"', 6 , '2020-11-07', 11524184000187);
INSERT INTO certificado(numero_certificado, titulo, cpf, descricao, carga_horaria, data_emissao, cnpj) VALUES (51535545, 'Certificado de Participação', 43269456705, 'Certificado que prova a particação no evento "XVIII Congresso Brasileiro do Sono"', 6 , '2021-06-05', 11524184000187);

/*Tipo Participante*/

INSERT INTO tipo_participante(numero_certificado, tipo_participante) VALUES (12345677, 'ouvinte');
INSERT INTO tipo_participante(numero_certificado, tipo_participante) VALUES (12345678, 'ouvinte');
INSERT INTO tipo_participante(numero_certificado, tipo_participante) VALUES (01234567, 'ouvinte');
INSERT INTO tipo_participante(numero_certificado, tipo_participante) VALUES (23456781, 'ouvinte');
INSERT INTO tipo_participante(numero_certificado, tipo_participante) VALUES (51535545, 'ouvinte');

/*Lote e Ingresso*/

INSERT INTO lote(numero_lote, valor) VALUES(1,50);
INSERT INTO lote(numero_lote, valor) VALUES(2,60);
INSERT INTO lote(numero_lote, valor) VALUES(3,70);
INSERT INTO lote(numero_lote, valor) VALUES(4,80);
INSERT INTO lote(numero_lote, valor) VALUES(5,90);

INSERT INTO ingresso(numero_ingresso, numero_lote,data,desconto,forma_pagamento, cpf, id_evento) VALUES(11,1,'2021-01-19','50','dinheiro',43269456701,1);
INSERT INTO ingresso(numero_ingresso, numero_lote,data,desconto,forma_pagamento, cpf, id_evento) VALUES(22,2,'2020-11-16','40','dinheiro',43269456702,2);
INSERT INTO ingresso(numero_ingresso, numero_lote,data,desconto,forma_pagamento, cpf, id_evento) VALUES(33,3,'2020-09-21','30','boleto',43269456703,3);
INSERT INTO ingresso(numero_ingresso, numero_lote,data,desconto,forma_pagamento, cpf, id_evento) VALUES(44,4,'2020-11-04','20','cartão',43269456704,4);
INSERT INTO ingresso(numero_ingresso, numero_lote,data,desconto,forma_pagamento, cpf, id_evento) VALUES(55,5,'2021-06-03','10','dinheiro',43269456705,5);

/*Representante e Representa*/

INSERT INTO representante(cpf_representante, nome, email, telefone) VALUES(53269456701, "Zinedine Zidane", 'zidane@contato.com', 12345678);
INSERT INTO representante(cpf_representante, nome, email, telefone) VALUES(53269456702, "Lionel Messi", 'messi@contato.com', 12345677);
INSERT INTO representante(cpf_representante, nome, email, telefone) VALUES(53269456703, "Cristiano Ronaldo", 'cr07@contato.com', 12345676);
INSERT INTO representante(cpf_representante, nome, email, telefone) VALUES(53269456704, "Ronaldo Nazario", 'ronaldo09@contato.com', 12345675);
INSERT INTO representante(cpf_representante, nome, email, telefone) VALUES(53269456705, "Diego Armando Maradona", 'maradona_rei_delas@contato.com', 12345674);

INSERT INTO representa(cnpj, cpf_representante) VALUES (11524184000187, 53269456701);
INSERT INTO representa(cnpj, cpf_representante) VALUES (29532264000178, 53269456702);
INSERT INTO representa(cnpj, cpf_representante) VALUES (14578574000156, 53269456703);
INSERT INTO representa(cnpj, cpf_representante) VALUES (27349772000111, 53269456704);
INSERT INTO representa(cnpj, cpf_representante) VALUES (07755256000158, 53269456705);

/*Patrocinadora e Patrocina*/

INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) VALUES (17359434000511, "Avenida Paulista", "São Paulo", "São Paulo", "01310-940", "900", "Pneus S.A", "pneus@contato.br", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) VALUES (22259434000333, "Avenida Brigadeiro Faria Lima", "São Paulo", "São Paulo", "05426-200", "1000", "Planos de Saude S.A", "saude@contato.br", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) VALUES (12359434000321, "Avenida Pompéia", "São Paulo", "São Paulo", "05022-000", "1030", "Tecnologia e Segurança Privada S.A", "tecseguranca@contato.br", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) VALUES (55559434000432, "Avenida Alcântara Machado", "São Paulo", "São Paulo", "03302-000", "3456", "Elétrica Segurança", "eletricsecurity@contato.br", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, Promotora, Patrocinadora, Organizadora) VALUES (25559434000522, "Avenida Assis Ribeiro", "São Paulo", "São Paulo", "03717-002", "1600", "Carreta Furacão Siga em Frente", "carretaEventos@contato.br", false, true, false);

INSERT INTO patrocinadora(cnpj) VALUES (17359434000511);
INSERT INTO patrocinadora(cnpj) VALUES (22259434000333);
INSERT INTO patrocinadora(cnpj) VALUES (12359434000321);
INSERT INTO patrocinadora(cnpj) VALUES (55559434000432);
INSERT INTO patrocinadora(cnpj) VALUES (25559434000522);

INSERT INTO patrocina(cnpj, id_evento) VALUES (17359434000511,1);
INSERT INTO patrocina(cnpj, id_evento) VALUES (22259434000333,2);
INSERT INTO patrocina(cnpj, id_evento) VALUES (12359434000321,3);
INSERT INTO patrocina(cnpj, id_evento) VALUES (55559434000432,4);
INSERT INTO patrocina(cnpj, id_evento) VALUES (25559434000522,5);
INSERT INTO PATROCINA (cnpj, id_evento) VALUES
(12359434000321, 6),
(17359434000511, 6),
(22259434000333, 6),
(25559434000522, 6),
(55559434000432, 6),
(22259434000333, 7),
(25559434000522, 7),
(55559434000432, 7),
(12359434000321, 7),
(25559434000522, 8),
(25559434000522, 9),
(22259434000333, 8),
(55559434000432, 9),
(55559434000432, 10);
/*Contrato e Rede Social*/

INSERT INTO contrato(id_contrato, representante_evento, representante_patrocinadora, taxa_patrocinio, plano_patrocinio, data_inicio, data_fim, cnpj, C_O_cnpj) 
VALUES (1,"Edson Arantes do Nascimento", "Zinedine Zidane", 30, 'Basico', '2021-01-19', '2021-01-22', 17359434000511,11524184000187);
INSERT INTO contrato(id_contrato, representante_evento, representante_patrocinadora, taxa_patrocinio, plano_patrocinio, data_inicio, data_fim, cnpj, C_O_cnpj) 
VALUES (2,"Luis Figo", "Lionel Messi", 20, 'Bronze', '2020-11-16', '2020-11-20', 22259434000333, 29532264000178);
INSERT INTO contrato(id_contrato, representante_evento, representante_patrocinadora, taxa_patrocinio, plano_patrocinio, data_inicio, data_fim, cnpj, C_O_cnpj) 
VALUES (3,"Paolo Maldini", "Cristiano Ronaldo", 20, 'Bronze', '2020-09-21', '2020-09-25', 12359434000321,14578574000156);
INSERT INTO contrato(id_contrato, representante_evento, representante_patrocinadora, taxa_patrocinio, plano_patrocinio, data_inicio, data_fim, cnpj, C_O_cnpj) 
VALUES (4,"Thierry Henry", "Ronaldo Nazario", 10, 'Prata', '2020-11-04', '2020-11-07', 55559434000432, 27349772000111);
INSERT INTO contrato(id_contrato, representante_evento, representante_patrocinadora, taxa_patrocinio, plano_patrocinio, data_inicio, data_fim, cnpj, C_O_cnpj) 
VALUES (5,"Claude Makélélée", "Diego Armando Maradona", 0, 'Gold', '2021-06-03', '2021-06-05', 25559434000522, 07755256000158);

INSERT INTO rede_social(nome, url, usuario, id_evento,cnpj) VALUES ('facebook','https://www.facebook.com', 'Evento Ultra Mega Show', 1, 37159434000115);
INSERT INTO rede_social(nome, url, usuario, id_evento,cnpj) VALUES ('youtube','https://www.youtube.com', 'Evento Ultra Mega Show', 2, 37159434000115);
INSERT INTO rede_social(nome, url, usuario, id_evento,cnpj) VALUES ('instagram','https://www.instagram.com', 'Evento Ultra Mega Show', 3, 37159434000115);
INSERT INTO rede_social(nome, url, usuario, id_evento,cnpj) VALUES ('twitter','https://www.twitter.com', 'Evento Ultra Mega Show', 4, 37159434000115);
INSERT INTO rede_social(nome, url, usuario, id_evento,cnpj) VALUES ('LinkedIn','https://br.linkedin.com', 'Evento Ultra Mega Show', 5, 37159434000115);

/* Inserção Parte 5 */

/* Inserção Dados Organizador */
use eventos_cientificos;
INSERT INTO organizador (cpf, remuneracao, carga_horaria) VALUES 
	(43269456716, 700.00, 8.00),
    (43269456717, 750.00, 8.00),
    (43269456718, 730.00, 8.00),
    (43269456719, 720.00, 8.00),
    (43269456720, 725.00, 8.00);

INSERT INTO organizador (cpf, remuneracao, carga_horaria) VALUES 
    (43269456731, 720.00, 8.00),
    (43269456733, 720.00, 8.00),
    (43269456734, 720.00, 8.00);
    
UPDATE participante
set organizador = 1
where cpf IN (43269456730, 43269456731, 43269456733, 43269456734);

/*Contrata: relacao entre Organizadora e organizador*/

INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES 
	(43269456716, '2021-01-19', '2021-01-22',11524184000187),
    (43269456717, '2020-11-16', '2020-11-20',11524184000187),
    (43269456718, '2020-09-21', '2020-09-25',11524184000187),
    (43269456719, '2020-11-04', '2020-11-07',11524184000187),
    (43269456720, '2021-06-03', '2021-06-05',11524184000187);
    
update contrata
set data_fim = ADDDATE(data_fim, INTERVAL 12 month)
where cpf = 43269456716;

update contrata
set data_fim = ADDDATE(data_fim, INTERVAL 2 year)
where cpf = 43269456717;

update contrata
set data_fim = ADDDATE(data_fim, INTERVAL 6 month)
where cpf = 43269456718;

update contrata
set data_fim = ADDDATE(data_fim, INTERVAL 5 month)
where cpf = 43269456719;

update contrata
set data_fim = ADDDATE(data_fim, INTERVAL 10 month)
where cpf = 43269456720;
/*Compoe: relacao entre Organizador e Comite_programa*/

INSERT INTO compoe (id_comite, cpf) VALUES
	(1,43269456716),
    (2,43269456716),
    (3,43269456717),
    (4,43269456720),
    (5,43269456719),
    (5,43269456718);

/* Local origem das caravanas*/   
    
INSERT INTO local_origem (Id_local, Logradouro, Cidade, Estado, CEP, Numero) VALUES
	(1,'Rua do Flamingo', 'Fernandopolis', 'SP', 15600000, 156),
    (2,'Avenida guga', 'Fernando de Noronha', 'RJ', 15420000, 245),
    (3,'Rua do santinho', 'Montes Claros', 'MG', 12765000, 27), 
    (4,'Rua do Poze do rodo', 'Favela do Rodo', 'RJ', 98456000, 144),
    (5,'Avenida ave nida', 'Criciúma', 'SC', 38415020, 755);

/*caravana*/
INSERT INTO Caravana (Nome_caravana, Data_saida, Data_chegada, Id_local) VALUES
	('caravana fernandopolis', '2020-11-16', '2020-11-18', 1),
    ('caravana do rodo', '2020-11-15', '2020-11-17', 2),
    ('santavana', '2020-11-17','2020-11-18', 3),
    ('carnavana', '2020-11-12','2020-11-15', 4),
    ('caranida', '2020-11-13','2020-11-19',5);

INSERT INTO participante_caravana (cpf, Valor_passagem, Nome_caravana) VALUES
	(43269456725, 350.45, 'caravana do rodo'),
    (43269456728, 382.30, 'caranida'),
    (43269456721, 382.30, 'caranida'),
    (43269456735, 230.25, 'caravana fernandopolis'),
    (43269456711, 230.25, 'caravana fernandopolis'),
    (43269456708, 110.70, 'carnavana'),
    (43269456713, 270.65, 'santavana');

INSERT INTO Canal_informativo (Id_canal, Nome, URL, Nome_caravana) VALUES 
	(1, 'LinkedIn', 'linkedin.com/in/carnavana', 'carnavana'),
    (2, 'Facebook', 'facebook.com/carnavana', 'carnavana'),
    (3, 'LinkedIn', 'linkedin.com/in/caranida', 'caranida'),
    (4, 'Facebook', 'facebook.com/caravana_fernandopolis', 'caravana fernandopolis'),
    (5, 'Facebook', 'facebook.com/caravana-do-rodo', 'caravana do rodo'),
    (6, 'Instagram', 'instagram.com/caravanadorodo', 'caravana do rodo'),
    (7, 'Instagram', 'instagram.com/caravanadorodo', 'santavana');

INSERT INTO Divulga (Id_canal, cpf) VALUES 
	(1,43269456716),
    (2,43269456720),
    (3,43269456717),
    (4,43269456716),
    (5,43269456718),
    (4,43269456719);
    
INSERT INTO mobilizador_caravana (CPF, Nome, Telefone, CEP, Nome_caravana, cnpj, COO_CPF, Id_canal) VALUES
	(43269456736, 'Daniel Orivaldo da Silva', 1192345678, 51216531, 'caravana do rodo', 7755256000158, 43269456716, 1),
	(43269456737, 'Carlos alberto de Nóbrega', 1192345768, 51216443, 'carnavana', 7755256000158, 43269456718, 5),
    (43269456738, 'Ednaldo Pereira', 1192543608, 33416581, 'caravana fernandopolis', 7755256000158, 43269456720, 3),
    (43269456739, 'Tristão alenídio Soares', 1193354698, 78516441, 'santavana', 7755256000158, 43269456719, 4),
    (43269456740, 'Uzumaki Naruto', 1192445798, 85216531, 'caranida', 7755256000158, 43269456716, 2),
    (43269456741, 'João das Couves', 1199741238, 51216531, 'caravana do rodo', 7755256000158, 43269456717, 1);

INSERT INTO veiculo (Tipo, Valor_passagem, Nome_companhia, Nome_caravana) VALUES
	('Ônibus', 350.45, 'Gontijo', 'caravana do rodo'),
    ('Van', 110.7, 'Vanzaum do pedro', 'carnavana'),
    ('Ônibus', 382.3, 'bujão', 'caranida'),
    ('Avião', 230.25, 'AirBNB', 'caravana fernandopolis'),
    ('van', 270.65, 'Van gogh', 'santavana');
