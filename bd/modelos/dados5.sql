/* Inserção Dados Organizador */
use eventos_cientificos;
INSERT INTO organizador (cpf, remuneracao, carga_horaria) VALUES 
	(43269456716, 700.00, 8.00),
    (43269456717, 750.00, 8.00),
    (43269456718, 730.00, 8.00),
    (43269456719, 720.00, 8.00),
    (43269456720, 725.00, 8.00);

/*Contrata: relacao entre Organizadora e organizador*/

INSERT INTO contrata (cpf, data_inicio, data_fim, cnpj) VALUES 
	(43269456716, '2021-01-19', '2021-01-22',11524184000187),
    (43269456717, '2020-11-16', '2020-11-20',11524184000187),
    (43269456718, '2020-09-21', '2020-09-25',11524184000187),
    (43269456719, '2020-11-04', '2020-11-07',11524184000187),
    (43269456720, '2021-06-03', '2021-06-05',11524184000187);

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

