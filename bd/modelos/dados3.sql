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