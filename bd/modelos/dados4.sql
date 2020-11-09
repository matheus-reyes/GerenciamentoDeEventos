
/*Contrata */
Use eventos_cientificos;

/*SELECT* FROM lote;

INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES (43269456701, '2021-01-19', '2021-01-22',11524184000187);
INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES (43269456702, '2020-11-16', '2020-11-20',11524184000187);
INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES (43269456703, '2020-09-21', '2020-09-25',11524184000187);
INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES (43269456704, '2020-11-04', '2020-11-07',11524184000187);
INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES (43269456705, '2021-06-03', '2021-06-05',11524184000187);

*/
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

