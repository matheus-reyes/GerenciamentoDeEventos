use eventos_cientificos;

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
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Centro de Convenções Frei Caneca", 20.000, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Twitch", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Zoom", 500, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Pavilhão Anhembi", 20.000, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("São Paulo Expo", 20.000, true, false);
INSERT INTO local (nome, valor_locacao, Local_online, Local_presencial) VALUES ("Expo Center Norte", 20.000, true, false);

/* Inserção Dados Local_Presencial */

INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (2, "Rua Quarenta e Nove - Boa Esperança", "Cuiabá", "Mato Grosso", "78060-900", "2367", 1000, 149.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (5, "Rua Frei Caneca - Consolação", "São Paulo", "São Paulo", "01307-001", "569", 3800, 10.500);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (8, "Avenida Olavo Fontoura - Santana", "São Paulo", "São Paulo", "02012-021", "1209", 30000, 100.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (9, "Rod. dos Imigrantes - Vila Água Funda", "São Paulo", "São Paulo", "04329-900", "1,5", 7810, 14.000);
INSERT INTO local_presencial (id_local, end_logradouro, end_cidade, end_estado, end_cep, end_numero, capacidade, area) VALUES (10, "Rua José Bernardo Pinto - Vila Guilherme", "São Paulo", "São Paulo", "02055-000", "333", 4500, 98.000);

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