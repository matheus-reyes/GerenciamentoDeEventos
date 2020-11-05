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
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("O imapcto dos dados nas decisões corporativas", 2, "palestra");
INSERT INTO atividade (nome, id_evento, tipo_atividade) VALUES ("Visão computacional", 2, "palestra");

