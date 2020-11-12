-- Banco de Dados
-- ________________ 

create database Eventos_Cientificos;
use Eventos_Cientificos;

-- Tabelas
-- _____________ 

create table APRESENTA (
     cpf bigint not null,
     codigo_atividade int not null,
     constraint ID_APRESENTA_ID primary key (codigo_atividade, cpf));

create table APRESENTADO_EM (
     DOI varchar(255) not null,
     codigo_atividade int not null,
     constraint ID_APRESENTADO_EM_ID primary key (DOI, codigo_atividade));

create table Artigo (
     titulo varchar(255) not null,
     DOI varchar(255) not null,
     revista_publicacao varchar(255) not null,
     id_comite int not null,
     constraint ID_Artigo_ID primary key (DOI));

create table Atividade (
     nome varchar(255) not null,
     codigo_atividade int not null auto_increment,
     id_evento int not null,
     tipo_atividade varchar(100) not null,
     constraint ID_Atividade_ID primary key (codigo_atividade));

create table Atividade_social (
     codigo_atividade int not null,
     tipo varchar(255) not null,
     valor_convite float not null,
     constraint ID_Ativi_Ativi_ID primary key (codigo_atividade));

create table Autor_Artigo (
     cpf bigint not null,
     minicurriculo varchar(255) not null,
     constraint ID_Autor_Parti_ID primary key (cpf));

create table Avaliador (
     cpf bigint not null,
     constraint ID_Avali_Parti_ID primary key (cpf));

create table Canal_informativo (
     Id_canal int not null auto_increment,
     Nome varchar(255) not null,
     URL varchar(255) not null,
     Nome_caravana varchar(255) not null,
     constraint ID_Canal_informativo_ID primary key (Id_canal));

create table Caravana (
     Nome_caravana varchar(255) not null,
     Data_saida date not null,
     Data_chegada date not null,
     Id_local int not null,
     constraint ID_Caravana_ID primary key (Nome_caravana));

create table Certificado (
     titulo varchar(255) not null,
     numero_certificado int not null auto_increment,
     cpf bigint not null,
     descricao varchar(255) not null,
     carga_horaria int not null,
     data_emissao date not null,
     cnpj bigint not null,
     constraint ID_Certificado_ID primary key (numero_certificado),
     constraint SID_Certi_Parti_ID unique (cpf));

create table Comite_Programa (
     id_comite int not null auto_increment,
     constraint ID_Comite_Programa_ID primary key (id_comite));

create table COMPOE (
     id_comite int not null,
     cpf bigint not null,
     constraint ID_COMPOE_ID primary key (id_comite, cpf));

create table Concurso (
     codigo_atividade int not null,
     tema varchar(255) not null,
     constraint ID_Concu_Ativi_ID primary key (codigo_atividade));

create table CONDUZ (
     codigo_atividade int not null,
     cpf bigint not null,
     constraint ID_CONDUZ_ID primary key (codigo_atividade, cpf));

create table CONTRATA (
     cpf bigint not null,
     data_inicio date not null,
     data_fim date not null,
     cnpj bigint not null,
     constraint ID_CONTR_Organ_ID primary key (cpf));

create table Contrato (
     id_contrato int not null auto_increment,
     representante_evento varchar(255) not null,
     representante_patrocinadora varchar(255) not null,
     taxa_patrocinio float not null,
     plano_patrocinio varchar(255) not null,
     data_inicio date not null,
     data_fim date not null,
     cnpj bigint not null,
     C_O_cnpj bigint not null,
     constraint ID_Contrato_ID primary key (id_contrato));

create table DIVULGA (
     Id_canal int not null,
     cpf bigint not null,
     constraint ID_DIVULGA_ID primary key (cpf, Id_canal));

create table Entidade (
     cnpj bigint not null,
     end_logradouro varchar(255) not null,
     end_cidade varchar(255) not null,
     end_estado varchar(255) not null,
     end_cep varchar(255) not null,
     end_numero varchar(255) not null,
     nome_entidade varchar(255) not null,
     email varchar(255) not null,
     Promotora boolean,
     Patrocinadora boolean,
     Organizadora boolean,
     constraint ID_Entidade_ID primary key (cnpj));

create table Equipamento (
     nome varchar(255) not null,
     codigo_equipamento int not null auto_increment,
     valor float not null,
     codigo_local int not null,
     constraint ID_Equipamento_ID primary key (codigo_equipamento));

create table Evento (
     tema varchar(255) not null,
     id_evento int not null auto_increment,
     edicao tinyint not null,
     nome varchar(255) not null,
     data_inicio date not null,
     data_fim date not null,
     cnpj bigint not null,
     PRO_cnpj bigint not null,
     constraint ID_Evento_ID primary key (id_evento));

create table FAZ_LOCACAO (
     id_contrato int not null,
     id_evento int not null,
     data_inicio date not null,
     data_fim date not null,
     valor float not null,
     id_local int not null,
     constraint ID_FAZ_LOCACAO_ID primary key (id_contrato),
     constraint SID_FAZ_L_Event_ID unique (id_evento));

create table INGRESSO (
     numero_ingresso int not null auto_increment,
     numero_lote tinyint not null,
     data date not null,
     desconto float not null,
     forma_pagamento varchar(255) not null,
     cpf bigint not null,
     id_evento int not null,
     constraint ID_INGRESSO_ID primary key (numero_ingresso),
     constraint SID_INGRE_Lote_ID unique (numero_lote));

create table INSCREVE (
     codigo_atividade int not null,
     cpf bigint not null,
     constraint ID_INSCREVE_ID primary key (codigo_atividade, cpf));

create table Instrutor (
     cpf bigint not null,
     constraint ID_Instr_Parti_ID primary key (cpf));

create table JULGA (
     codigo_atividade int not null,
     cpf bigint not null,
     constraint ID_JULGA_ID primary key (codigo_atividade, cpf));

create table Local (
     nome varchar(255) not null,
     id_local int not null auto_increment,
     valor_locacao float not null,
     Local_online boolean,
     Local_presencial boolean,
     constraint ID_Local_ID primary key (id_local));

create table Local_atividade (
     nome varchar(255) not null,
     capacidade int not null,
     codigo_local int not null auto_increment,
     id_local int not null,
     constraint ID_Local_atividade_ID primary key (codigo_local));

create table Local_online (
     id_local int not null,
     url varchar(255) not null,
     constraint ID_Local_Local_1_ID primary key (id_local));

create table Local_origem (
     Id_local int not null auto_increment,
     Logradouro varchar(255) not null,
     Cidade varchar(255) not null,
     Estado varchar(255) not null,
     CEP int not null,
     Numero varchar(255) not null,
     constraint ID_Local_origem_ID primary key (Id_local));

create table Local_presencial (
     id_local int not null,
     end_logradouro varchar(255) not null,
     end_cidade varchar(255) not null,
     end_estado varchar(255) not null,
     end_cep varchar(255) not null,
     end_numero varchar(255) not null,
     capacidade int not null,
     area float not null,
     constraint ID_Local_Local_ID primary key (id_local));

create table Lote (
     numero_lote tinyint not null,
     valor float not null,
     constraint ID_Lote_ID primary key (numero_lote));

create table MINISTRA (
     codigo_atividade int not null,
     cpf bigint not null,
     constraint ID_MINISTRA_ID primary key (codigo_atividade, cpf));

create table Ministrante_tutoria (
     cpf bigint not null,
     afiliacao varchar(255) not null,
     minicurriculo varchar(255) not null,
     constraint ID_Minis_Parti_ID primary key (cpf));

create table Mobilizador_caravana (
     CPF bigint not null,
     Nome varchar(255) not null,
     Telefone int not null,
     CEP int not null,
     Nome_caravana varchar(255) not null,
     cnpj bigint not null,
     COO_CPF bigint not null,
     Id_canal int not null,
     constraint ID_Mobilizador_caravana_ID primary key (CPF));

create table Movimentacao_Financeira (
     tipo varchar(255) not null,
     descricao varchar(500) not null,
     codigo_movimentacao int not null auto_increment,
     valor_a_pagar float not null,
     quantidade int not null,
     id_evento int not null,
     constraint ID_Movimentacao_Financeira_ID primary key (codigo_movimentacao));

create table Nota_Fiscal (
     numero_nota int not null auto_increment,
     codigo_movimentacao int not null,
     cnpj_emissor bigint not null,
     nome_razao_social varchar(255) not null,
     inscricao_municipal varchar(255) not null,
     codigo_verificacao varchar(255) not null,
     valor float not null,
     data_emissao date not null,
     constraint ID_Nota_Fiscal_ID primary key (numero_nota),
     constraint SID_Nota__Movim_ID unique (codigo_movimentacao));

create table ORGANIZA (
     codigo_atividade int not null,
     cpf bigint not null,
     constraint ID_ORGANIZA_ID primary key (codigo_atividade, cpf));

create table Organizador (
     cpf bigint not null,
     remuneracao float not null,
     carga_horaria float not null,
     constraint ID_Organ_Parti_ID primary key (cpf));

create table Organizadora (
     cnpj bigint not null,
     constraint ID_Organ_Entid_ID primary key (cnpj));

create table Ouvinte (
     cpf bigint not null,
     constraint ID_Ouvin_Parti_ID primary key (cpf));

create table Palestra (
     codigo_atividade int not null,
     descricao varchar(500) not null,
     publico_alvo varchar(255) not null,
     constraint ID_Pales_Ativi_ID primary key (codigo_atividade));

create table Palestrante (
     cpf bigint not null,
     filiacao varchar(255) not null,
     minicurriculo varchar(255) not null,
     constraint ID_Pales_Parti_ID primary key (cpf));

create table Participante (
     nome varchar(255) not null,
     cpf bigint not null,
     cep int not null,
     e_mail varchar(255) not null,
     telefone int not null,
     Staff boolean,
     Palestrante boolean,
     Ouvinte boolean,
     Organizador boolean,
     Ministrante_tutoria boolean,
     Instrutor boolean,
     Avaliador boolean,
     Autor_Artigo boolean,
     constraint ID_Participante_ID primary key (cpf));

create table Participante_caravana (
     cpf bigint not null,
     Valor_passagem float not null,
     Nome_caravana varchar(255) not null,
     constraint FKPar_Par_ID primary key (cpf));

create table participantes_concurso (
     codigo_atividade int not null,
     nome_participante varchar(255) not null,
     constraint ID_participantes_concurso_ID primary key (codigo_atividade, nome_participante));

create table participantes_reuniao (
     codigo_atividade int not null,
     nome_participante varchar(255) not null,
     constraint ID_participantes_reuniao_ID primary key (codigo_atividade, nome_participante));

create table PATROCINA (
     cnpj bigint not null,
     id_evento int not null,
     constraint ID_PATROCINA_ID primary key (id_evento, cnpj));

create table Patrocinadora (
     cnpj bigint not null,
     constraint ID_Patro_Entid_ID primary key (cnpj));

create table premiacao_concurso (
     codigo_atividade int not null,
     premio varchar(255) not null,
     colocacao int not null,
     constraint ID_premiacao_concurso_ID primary key (codigo_atividade, premio, colocacao));

create table Promotora (
     cnpj bigint not null,
     constraint ID_Promo_Entid_ID primary key (cnpj));

create table PUBLICA (
     cpf bigint not null,
     DOI varchar(255) not null,
     constraint ID_PUBLICA_ID primary key (DOI, cpf));

create table Rede_Social (
     nome varchar(255) not null,
     url varchar(255) not null,
     usuario varchar(255) not null,
     id_evento int not null,
     cnpj bigint not null,
     constraint ID_Rede_Social_ID primary key (url));

create table regras_concurso (
     codigo_atividade int not null,
     regra varchar(255) not null,
     constraint ID_regras_concurso_ID primary key (codigo_atividade, regra));

create table REPRESENTA (
     cnpj bigint not null,
     cpf_representante bigint not null,
     constraint ID_REPRESENTA_ID primary key (cpf_representante, cnpj));

create table Representante (
     cpf_representante bigint not null,
     nome varchar(255) not null,
     email varchar(255) not null,
     telefone int not null,
     constraint ID_Representante_ID primary key (cpf_representante));

create table Reuniao (
     codigo_atividade int not null,
     objetivo varchar(500) not null,
     constraint ID_Reuni_Ativi_ID primary key (codigo_atividade));

create table Sessao (
     data_inicio date not null,
     data_fim date not null,
     codigo_atividade int not null,
     codigo_local int not null,
     constraint ID_Sessao primary key (codigo_atividade),
     constraint SID_Sessao_ID unique (data_inicio));

create table Sessao_artigo (
     codigo_atividade int not null,
     tipo varchar(255) not null,
     numero_sessoes int not null,
     responsavel varchar(255) not null,
     constraint ID_Sessa_Ativi_ID primary key (codigo_atividade));

create table Staff (
     cpf bigint not null,
     constraint ID_Staff_Parti_ID primary key (cpf));

create table tipo_participante (
     numero_certificado int not null,
     tipo_participante char(255) not null,
     constraint ID_tipo_participante_ID primary key (numero_certificado, tipo_participante));

create table Tutoria (
     codigo_atividade int not null,
     valor_inscricao float not null,
     tema varchar(255) not null,
     publico_alvo varchar(255) not null,
     constraint ID_Tutor_Ativi_ID primary key (codigo_atividade));

create table UTILIZA (
     codigo_atividade int not null,
     codigo_equipamento int not null,
     quantidade int not null,
     constraint ID_UTILIZA_ID primary key (codigo_equipamento, codigo_atividade));

create table Veiculo (
     Codigo_veiculo int not null auto_increment,
     Tipo varchar(255) not null,
     Valor_passagem float not null,
     Nome_companhia varchar(255) not null,
     Nome_caravana varchar(255) not null,
     constraint ID_Veiculo_ID primary key (Codigo_veiculo));

create table Workshop (
     codigo_atividade int not null,
     valor_inscricao float not null,
     tema varchar(255) not null,
     publico_alvo varchar(255) not null,
     constraint ID_Works_Ativi_ID primary key (codigo_atividade));


-- Constraints Section
-- ___________________ 

alter table APRESENTA add constraint EQU_APRES_Pales_1
     foreign key (codigo_atividade)
     references Palestra (codigo_atividade);

alter table APRESENTA add constraint EQU_APRES_Pales_FK
     foreign key (cpf)
     references Palestrante (cpf);

alter table APRESENTADO_EM add constraint EQU_APRES_Sessa_FK
     foreign key (codigo_atividade)
     references Sessao_artigo (codigo_atividade);

alter table APRESENTADO_EM add constraint EQU_APRES_Artig
     foreign key (DOI)
     references Artigo (DOI);

-- Not implemented
-- alter table Artigo add constraint ID_Artigo_CHK
--     check(exists(select * from APRESENTADO_EM
--                  where APRESENTADO_EM.DOI = DOI)); 

-- Not implemented
-- alter table Artigo add constraint ID_Artigo_CHK
--     check(exists(select * from PUBLICA
--                  where PUBLICA.DOI = DOI)); 

alter table Artigo add constraint EQU_Artig_Comit_FK
     foreign key (id_comite)
     references Comite_Programa (id_comite);

-- Not implemented
-- alter table Atividade add constraint ID_Atividade_CHK
--     check(exists(select * from Sessao
--                  where Sessao.codigo_atividade = codigo_atividade)); 

-- Not implemented
-- alter table Atividade add constraint ID_Atividade_CHK
--     check(exists(select * from ORGANIZA
--                  where ORGANIZA.codigo_atividade = codigo_atividade)); 

alter table Atividade add constraint EQU_Ativi_Event_FK
     foreign key (id_evento)
     references Evento (id_evento);

alter table Atividade_social add constraint ID_Ativi_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

-- Not implemented
-- alter table Autor_Artigo add constraint ID_Autor_Parti_CHK
--     check(exists(select * from PUBLICA
--                  where PUBLICA.cpf = cpf)); 

alter table Autor_Artigo add constraint ID_Autor_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Avaliador add constraint ID_Avali_Parti_CHK
--     check(exists(select * from JULGA
--                  where JULGA.cpf = cpf)); 

alter table Avaliador add constraint ID_Avali_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Canal_informativo add constraint ID_Canal_informativo_CHK
--     check(exists(select * from Mobilizador_caravana
--                  where Mobilizador_caravana.Id_canal = Id_canal)); 

-- Not implemented
-- alter table Canal_informativo add constraint ID_Canal_informativo_CHK
--     check(exists(select * from DIVULGA
--                  where DIVULGA.Id_canal = Id_canal)); 

alter table Canal_informativo add constraint FKINFORMA_SOBRE_FK
     foreign key (Nome_caravana)
     references Caravana (Nome_caravana);

-- Not implemented
-- alter table Caravana add constraint ID_Caravana_CHK
--     check(exists(select * from Participante_caravana
--                  where Participante_caravana.Nome_caravana = Nome_caravana)); 

-- Not implemented
-- alter table Caravana add constraint ID_Caravana_CHK
--     check(exists(select * from Canal_informativo
--                  where Canal_informativo.Nome_caravana = Nome_caravana)); 

-- Not implemented
-- alter table Caravana add constraint ID_Caravana_CHK
--     check(exists(select * from Veiculo
--                  where Veiculo.Nome_caravana = Nome_caravana)); 

-- Not implemented
-- alter table Caravana add constraint ID_Caravana_CHK
--     check(exists(select * from Mobilizador_caravana
--                  where Mobilizador_caravana.Nome_caravana = Nome_caravana)); 

alter table Caravana add constraint FKPARTE_DE_FK
     foreign key (Id_local)
     references Local_origem (Id_local);

-- Not implemented
-- alter table Certificado add constraint ID_Certificado_CHK
--     check(exists(select * from tipo_participante
--                  where tipo_participante.numero_certificado = numero_certificado)); 

alter table Certificado add constraint EQU_Certi_Organ_FK
     foreign key (cnpj)
     references Organizadora (cnpj);

alter table Certificado add constraint SID_Certi_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Comite_Programa add constraint ID_Comite_Programa_CHK
--     check(exists(select * from COMPOE
--                  where COMPOE.id_comite = id_comite)); 

-- Not implemented
-- alter table Comite_Programa add constraint ID_Comite_Programa_CHK
--     check(exists(select * from Artigo
--                  where Artigo.id_comite = id_comite)); 

alter table COMPOE add constraint REF_COMPO_Organ_FK
     foreign key (cpf)
     references Organizador (cpf);

alter table COMPOE add constraint EQU_COMPO_Comit
     foreign key (id_comite)
     references Comite_Programa (id_comite);

-- Not implemented
-- alter table Concurso add constraint ID_Concu_Ativi_CHK
--     check(exists(select * from participantes_concurso
--                  where participantes_concurso.codigo_atividade = codigo_atividade)); 

-- Not implemented
-- alter table Concurso add constraint ID_Concu_Ativi_CHK
--     check(exists(select * from premiacao_concurso
--                  where premiacao_concurso.codigo_atividade = codigo_atividade)); 

-- Not implemented
-- alter table Concurso add constraint ID_Concu_Ativi_CHK
--     check(exists(select * from regras_concurso
--                  where regras_concurso.codigo_atividade = codigo_atividade)); 

-- Not implemented
-- alter table Concurso add constraint ID_Concu_Ativi_CHK
--     check(exists(select * from JULGA
--                  where JULGA.codigo_atividade = codigo_atividade)); 

alter table Concurso add constraint ID_Concu_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

alter table CONDUZ add constraint EQU_CONDU_Instr_FK
     foreign key (cpf)
     references Instrutor (cpf);

alter table CONDUZ add constraint EQU_CONDU_Works
     foreign key (codigo_atividade)
     references Workshop (codigo_atividade);

alter table CONTRATA add constraint ID_CONTR_Organ_FK
     foreign key (cpf)
     references Organizador (cpf);

alter table CONTRATA add constraint EQU_CONTR_Organ_FK
     foreign key (cnpj)
     references Organizadora (cnpj);

alter table Contrato add constraint EQU_Contr_Patro_FK
     foreign key (cnpj)
     references Patrocinadora (cnpj);

alter table Contrato add constraint REF_Contr_Organ_FK
     foreign key (C_O_cnpj)
     references Organizadora (cnpj);

alter table DIVULGA add constraint FKDIV_Org
     foreign key (cpf)
     references Organizador (cpf);

alter table DIVULGA add constraint FKDIV_Can_FK
     foreign key (Id_canal)
     references Canal_informativo (Id_canal);

-- Not implemented
-- alter table Entidade add constraint ID_Entidade_CHK
--     check(exists(select * from REPRESENTA
--                  where REPRESENTA.cnpj = cnpj)); 

alter table Entidade add constraint LSTONE_Entidade
     check(Promotora is not null or Organizadora is not null or Patrocinadora is not null); 

alter table Equipamento add constraint REF_Equip_Local_FK
     foreign key (codigo_local)
     references Local_atividade (codigo_local);

-- Not implemented
-- alter table Evento add constraint ID_Evento_CHK
--     check(exists(select * from Atividade
--                  where Atividade.id_evento = id_evento)); 

-- Not implemented
-- alter table Evento add constraint ID_Evento_CHK
--     check(exists(select * from FAZ_LOCACAO
--                  where FAZ_LOCACAO.id_evento = id_evento)); 

-- Not implemented
-- alter table Evento add constraint ID_Evento_CHK
--     check(exists(select * from Movimentacao_Financeira
--                  where Movimentacao_Financeira.id_evento = id_evento)); 

-- Not implemented
-- alter table Evento add constraint ID_Evento_CHK
--     check(exists(select * from Rede_Social
--                  where Rede_Social.id_evento = id_evento)); 

alter table Evento add constraint EQU_Event_Organ_FK
     foreign key (cnpj)
     references Organizadora (cnpj);

alter table Evento add constraint EQU_Event_Promo_FK
     foreign key (PRO_cnpj)
     references Promotora (cnpj);

alter table FAZ_LOCACAO add constraint EQU_FAZ_L_Local_FK
     foreign key (id_local)
     references Local (id_local);

alter table FAZ_LOCACAO add constraint SID_FAZ_L_Event_FK
     foreign key (id_evento)
     references Evento (id_evento);

alter table INGRESSO add constraint EQU_INGRE_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

alter table INGRESSO add constraint SID_INGRE_Lote_FK
     foreign key (numero_lote)
     references Lote (numero_lote);

alter table INGRESSO add constraint REF_INGRE_Event_FK
     foreign key (id_evento)
     references Evento (id_evento);

alter table INSCREVE add constraint REF_INSCR_Ouvin_FK
     foreign key (cpf)
     references Ouvinte (cpf);

alter table INSCREVE add constraint REF_INSCR_Ativi
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

-- Not implemented
-- alter table Instrutor add constraint ID_Instr_Parti_CHK
--     check(exists(select * from CONDUZ
--                  where CONDUZ.cpf = cpf)); 

alter table Instrutor add constraint ID_Instr_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

alter table JULGA add constraint EQU_JULGA_Avali_FK
     foreign key (cpf)
     references Avaliador (cpf);

alter table JULGA add constraint EQU_JULGA_Concu
     foreign key (codigo_atividade)
     references Concurso (codigo_atividade);

-- Not implemented
-- alter table Local add constraint ID_Local_CHK
--     check(exists(select * from Local_atividade
--                  where Local_atividade.id_local = id_local)); 

-- Not implemented
-- alter table Local add constraint ID_Local_CHK
--     check(exists(select * from FAZ_LOCACAO
--                  where FAZ_LOCACAO.id_local = id_local)); 

alter table Local add constraint LSTONE_Local
     check(Local_presencial is not null or Local_online is not null); 

alter table Local_atividade add constraint EQU_Local_Local_FK
     foreign key (id_local)
     references Local (id_local);

alter table Local_online add constraint ID_Local_Local_1_FK
     foreign key (id_local)
     references Local (id_local);

-- Not implemented
-- alter table Local_origem add constraint ID_Local_origem_CHK
--     check(exists(select * from Caravana
--                  where Caravana.Id_local = Id_local)); 

alter table Local_presencial add constraint ID_Local_Local_FK
     foreign key (id_local)
     references Local (id_local);

-- Not implemented
-- alter table Lote add constraint ID_Lote_CHK
--     check(exists(select * from INGRESSO
--                  where INGRESSO.numero_lote = numero_lote)); 

alter table MINISTRA add constraint EQU_MINIS_Minis_FK
     foreign key (cpf)
     references Ministrante_tutoria (cpf);

alter table MINISTRA add constraint EQU_MINIS_Tutor
     foreign key (codigo_atividade)
     references Tutoria (codigo_atividade);

-- Not implemented
-- alter table Ministrante_tutoria add constraint ID_Minis_Parti_CHK
--     check(exists(select * from MINISTRA
--                  where MINISTRA.cpf = cpf)); 

alter table Ministrante_tutoria add constraint ID_Minis_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

alter table Mobilizador_caravana add constraint FKCOORDENA_FK
     foreign key (COO_CPF)
     references Organizador (CPF);

alter table Mobilizador_caravana add constraint FKResponsavel_por_FK
     foreign key (Nome_caravana)
     references Caravana (Nome_caravana);

alter table Mobilizador_caravana add constraint FKTERCEIRIZA_FK
     foreign key (cnpj)
     references Organizadora (cnpj);

alter table Mobilizador_caravana add constraint FKADMINISTRA_FK
     foreign key (Id_canal)
     references Canal_informativo (Id_canal);

-- Not implemented
-- alter table Movimentacao_Financeira add constraint ID_Movimentacao_Financeira_CHK
--     check(exists(select * from Nota_Fiscal
--                  where Nota_Fiscal.codigo_movimentacao = codigo_movimentacao)); 

alter table Movimentacao_Financeira add constraint EQU_Movim_Event_FK
     foreign key (id_evento)
     references Evento (id_evento);

alter table Nota_Fiscal add constraint SID_Nota__Movim_FK
     foreign key (codigo_movimentacao)
     references Movimentacao_Financeira (codigo_movimentacao);

alter table ORGANIZA add constraint EQU_ORGAN_Staff_FK
     foreign key (cpf)
     references Staff (cpf);

alter table ORGANIZA add constraint EQU_ORGAN_Ativi
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

-- Not implemented
-- alter table Organizador add constraint ID_Organ_Parti_CHK
--     check(exists(select * from DIVULGA
--                  where DIVULGA.cpf = cpf)); 

-- Not implemented
-- alter table Organizador add constraint ID_Organ_Parti_CHK
--     check(exists(select * from CONTRATA
--                  where CONTRATA.cpf = cpf)); 

alter table Organizador add constraint ID_Organ_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Organizadora add constraint ID_Organ_Entid_CHK
--     check(exists(select * from Certificado
--                  where Certificado.cnpj = cnpj)); 

-- Not implemented
-- alter table Organizadora add constraint ID_Organ_Entid_CHK
--     check(exists(select * from Evento
--                  where Evento.cnpj = cnpj)); 

-- Not implemented
-- alter table Organizadora add constraint ID_Organ_Entid_CHK
--     check(exists(select * from CONTRATA
--                  where CONTRATA.cnpj = cnpj)); 

alter table Organizadora add constraint ID_Organ_Entid_FK
     foreign key (cnpj)
     references Entidade (cnpj);

alter table Ouvinte add constraint ID_Ouvin_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Palestra add constraint ID_Pales_Ativi_CHK
--     check(exists(select * from APRESENTA
--                  where APRESENTA.codigo_atividade = codigo_atividade)); 

alter table Palestra add constraint ID_Pales_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

-- Not implemented
-- alter table Palestrante add constraint ID_Pales_Parti_CHK
--     check(exists(select * from APRESENTA
--                  where APRESENTA.cpf = cpf)); 

alter table Palestrante add constraint ID_Pales_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

-- Not implemented
-- alter table Participante add constraint ID_Participante_CHK
--     check(exists(select * from Certificado
--                  where Certificado.cpf = cpf)); 

-- Not implemented
-- alter table Participante add constraint ID_Participante_CHK
--     check(exists(select * from INGRESSO
--                  where INGRESSO.cpf = cpf)); 

alter table Participante add constraint LSTONE_Participante
     check(Organizador is not null or Instrutor is not null or Avaliador is not null or Autor_Artigo is not null or Staff is not null or Ministrante_tutoria is not null or Palestrante is not null or Ouvinte is not null); 

alter table Participante_caravana add constraint FKPar_Par_FK
     foreign key (cpf)
     references Participante (cpf);

alter table Participante_caravana add constraint FKPARTICIPA_FK
     foreign key (Nome_caravana)
     references Caravana (Nome_caravana);

alter table participantes_concurso add constraint EQU_parti_Concu
     foreign key (codigo_atividade)
     references Concurso (codigo_atividade);

alter table participantes_reuniao add constraint EQU_parti_Reuni
     foreign key (codigo_atividade)
     references Reuniao (codigo_atividade);

alter table PATROCINA add constraint REF_PATRO_Event
     foreign key (id_evento)
     references Evento (id_evento);

alter table PATROCINA add constraint EQU_PATRO_Patro_FK
     foreign key (cnpj)
     references Patrocinadora (cnpj);

-- Not implemented
-- alter table Patrocinadora add constraint ID_Patro_Entid_CHK
--     check(exists(select * from PATROCINA
--                  where PATROCINA.cnpj = cnpj)); 

-- Not implemented
-- alter table Patrocinadora add constraint ID_Patro_Entid_CHK
--     check(exists(select * from Contrato
--                  where Contrato.cnpj = cnpj)); 

alter table Patrocinadora add constraint ID_Patro_Entid_FK
     foreign key (cnpj)
     references Entidade (cnpj);

alter table premiacao_concurso add constraint EQU_premi_Concu
     foreign key (codigo_atividade)
     references Concurso (codigo_atividade);

-- Not implemented
-- alter table Promotora add constraint ID_Promo_Entid_CHK
--     check(exists(select * from Rede_Social
--                  where Rede_Social.cnpj = cnpj)); 

-- Not implemented
-- alter table Promotora add constraint ID_Promo_Entid_CHK
--     check(exists(select * from Evento
--                  where Evento.PRO_cnpj = cnpj)); 

alter table Promotora add constraint ID_Promo_Entid_FK
     foreign key (cnpj)
     references Entidade (cnpj);

alter table PUBLICA add constraint EQU_PUBLI_Artig
     foreign key (DOI)
     references Artigo (DOI);

alter table PUBLICA add constraint EQU_PUBLI_Autor_FK
     foreign key (cpf)
     references Autor_Artigo (cpf);

alter table Rede_Social add constraint EQU_Rede__Event_FK
     foreign key (id_evento)
     references Evento (id_evento);

alter table Rede_Social add constraint EQU_Rede__Promo_FK
     foreign key (cnpj)
     references Promotora (cnpj);

alter table regras_concurso add constraint EQU_regra_Concu
     foreign key (codigo_atividade)
     references Concurso (codigo_atividade);

alter table REPRESENTA add constraint EQU_REPRE_Repre
     foreign key (cpf_representante)
     references Representante (cpf_representante);

alter table REPRESENTA add constraint EQU_REPRE_Entid_FK
     foreign key (cnpj)
     references Entidade (cnpj);

-- Not implemented
-- alter table Representante add constraint ID_Representante_CHK
--     check(exists(select * from REPRESENTA
--                  where REPRESENTA.cpf_representante = cpf_representante)); 

-- Not implemented
-- alter table Reuniao add constraint ID_Reuni_Ativi_CHK
--     check(exists(select * from participantes_reuniao
--                  where participantes_reuniao.codigo_atividade = codigo_atividade)); 

alter table Reuniao add constraint ID_Reuni_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

alter table Sessao add constraint EQU_Sessa_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

alter table Sessao add constraint REF_Sessa_Local_FK
     foreign key (codigo_local)
     references Local_atividade (codigo_local);

-- Not implemented
-- alter table Sessao_artigo add constraint ID_Sessa_Ativi_CHK
--     check(exists(select * from APRESENTADO_EM
--                  where APRESENTADO_EM.codigo_atividade = codigo_atividade)); 

alter table Sessao_artigo add constraint ID_Sessa_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

-- Not implemented
-- alter table Staff add constraint ID_Staff_Parti_CHK
--     check(exists(select * from ORGANIZA
--                  where ORGANIZA.cpf = cpf)); 

alter table Staff add constraint ID_Staff_Parti_FK
     foreign key (cpf)
     references Participante (cpf);

alter table tipo_participante add constraint EQU_tipo__Certi
     foreign key (numero_certificado)
     references Certificado (numero_certificado);

-- Not implemented
-- alter table Tutoria add constraint ID_Tutor_Ativi_CHK
--     check(exists(select * from MINISTRA
--                  where MINISTRA.codigo_atividade = codigo_atividade)); 

alter table Tutoria add constraint ID_Tutor_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

alter table UTILIZA add constraint REF_UTILI_Equip
     foreign key (codigo_equipamento)
     references Equipamento (codigo_equipamento);

alter table UTILIZA add constraint REF_UTILI_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);

alter table Veiculo add constraint FKTRANSPORTA_FK
     foreign key (Nome_caravana)
     references Caravana (Nome_caravana);

-- Not implemented
-- alter table Workshop add constraint ID_Works_Ativi_CHK
--     check(exists(select * from CONDUZ
--                  where CONDUZ.codigo_atividade = codigo_atividade)); 

alter table Workshop add constraint ID_Works_Ativi_FK
     foreign key (codigo_atividade)
     references Atividade (codigo_atividade);


-- Index Section
-- _____________ 

create unique index ID_APRESENTA_IND
     on APRESENTA (codigo_atividade, cpf);

create index EQU_APRES_Pales_IND
     on APRESENTA (cpf);

create unique index ID_APRESENTADO_EM_IND
     on APRESENTADO_EM (DOI, codigo_atividade);

create index EQU_APRES_Sessa_IND
     on APRESENTADO_EM (codigo_atividade);

create unique index ID_Artigo_IND
     on Artigo (DOI);

create index EQU_Artig_Comit_IND
     on Artigo (id_comite);

create unique index ID_Atividade_IND
     on Atividade (codigo_atividade);

create index EQU_Ativi_Event_IND
     on Atividade (id_evento);

create unique index ID_Ativi_Ativi_IND
     on Atividade_social (codigo_atividade);

create unique index ID_Autor_Parti_IND
     on Autor_Artigo (cpf);

create unique index ID_Avali_Parti_IND
     on Avaliador (cpf);

create unique index ID_Canal_informativo_IND
     on Canal_informativo (Id_canal);

create index FKINFORMA_SOBRE_IND
     on Canal_informativo (Nome_caravana);

create unique index ID_Caravana_IND
     on Caravana (Nome_caravana);

create index FKPARTE_DE_IND
     on Caravana (Id_local);

create unique index ID_Certificado_IND
     on Certificado (numero_certificado);

create index EQU_Certi_Organ_IND
     on Certificado (cnpj);

create unique index SID_Certi_Parti_IND
     on Certificado (cpf);

create unique index ID_Comite_Programa_IND
     on Comite_Programa (id_comite);

create unique index ID_COMPOE_IND
     on COMPOE (id_comite, cpf);

create index REF_COMPO_Organ_IND
     on COMPOE (cpf);

create unique index ID_Concu_Ativi_IND
     on Concurso (codigo_atividade);

create unique index ID_CONDUZ_IND
     on CONDUZ (codigo_atividade, cpf);

create index EQU_CONDU_Instr_IND
     on CONDUZ (cpf);

create unique index ID_CONTR_Organ_IND
     on CONTRATA (cpf);

create index EQU_CONTR_Organ_IND
     on CONTRATA (cnpj);

create unique index ID_Contrato_IND
     on Contrato (id_contrato);

create index EQU_Contr_Patro_IND
     on Contrato (cnpj);

create index REF_Contr_Organ_IND
     on Contrato (C_O_cnpj);

create unique index ID_DIVULGA_IND
     on DIVULGA (cpf, Id_canal);

create index FKDIV_Can_IND
     on DIVULGA (Id_canal);

create unique index ID_Entidade_IND
     on Entidade (cnpj);

create unique index ID_Equipamento_IND
     on Equipamento (codigo_equipamento);

create index REF_Equip_Local_IND
     on Equipamento (codigo_local);

create unique index ID_Evento_IND
     on Evento (id_evento);

create index EQU_Event_Organ_IND
     on Evento (cnpj);

create index EQU_Event_Promo_IND
     on Evento (PRO_cnpj);

create unique index ID_FAZ_LOCACAO_IND
     on FAZ_LOCACAO (id_contrato);

create index EQU_FAZ_L_Local_IND
     on FAZ_LOCACAO (id_local);

create unique index SID_FAZ_L_Event_IND
     on FAZ_LOCACAO (id_evento);

create unique index ID_INGRESSO_IND
     on INGRESSO (numero_ingresso);

create index EQU_INGRE_Parti_IND
     on INGRESSO (cpf);

create unique index SID_INGRE_Lote_IND
     on INGRESSO (numero_lote);

create index REF_INGRE_Event_IND
     on INGRESSO (id_evento);

create unique index ID_INSCREVE_IND
     on INSCREVE (codigo_atividade, cpf);

create index REF_INSCR_Ouvin_IND
     on INSCREVE (cpf);

create unique index ID_Instr_Parti_IND
     on Instrutor (cpf);

create unique index ID_JULGA_IND
     on JULGA (codigo_atividade, cpf);

create index EQU_JULGA_Avali_IND
     on JULGA (cpf);

create unique index ID_Local_IND
     on Local (id_local);

create unique index ID_Local_atividade_IND
     on Local_atividade (codigo_local);

create index EQU_Local_Local_IND
     on Local_atividade (id_local);

create unique index ID_Local_Local_1_IND
     on Local_online (id_local);

create unique index ID_Local_origem_IND
     on Local_origem (Id_local);

create unique index ID_Local_Local_IND
     on Local_presencial (id_local);

create unique index ID_Lote_IND
     on Lote (numero_lote);

create unique index ID_MINISTRA_IND
     on MINISTRA (codigo_atividade, cpf);

create index EQU_MINIS_Minis_IND
     on MINISTRA (cpf);

create unique index ID_Minis_Parti_IND
     on Ministrante_tutoria (cpf);

create unique index ID_Mobilizador_caravana_IND
     on Mobilizador_caravana (CPF);

create index FKResponsavel_por_IND
     on Mobilizador_caravana (Nome_caravana);

create index FKTERCEIRIZA_IND
     on Mobilizador_caravana (cnpj);

create index FKADMINISTRA_IND
     on Mobilizador_caravana (Id_canal);

create unique index ID_Movimentacao_Financeira_IND
     on Movimentacao_Financeira (codigo_movimentacao);

create index EQU_Movim_Event_IND
     on Movimentacao_Financeira (id_evento);

create unique index ID_Nota_Fiscal_IND
     on Nota_Fiscal (numero_nota);

create unique index SID_Nota__Movim_IND
     on Nota_Fiscal (codigo_movimentacao);

create unique index ID_ORGANIZA_IND
     on ORGANIZA (codigo_atividade, cpf);

create index EQU_ORGAN_Staff_IND
     on ORGANIZA (cpf);

create unique index ID_Organ_Parti_IND
     on Organizador (cpf);

create index FKCOORDENA_IND
     on Mobilizador_caravana (COO_CPF);

create unique index ID_Organ_Entid_IND
     on Organizadora (cnpj);

create unique index ID_Ouvin_Parti_IND
     on Ouvinte (cpf);

create unique index ID_Pales_Ativi_IND
     on Palestra (codigo_atividade);

create unique index ID_Pales_Parti_IND
     on Palestrante (cpf);

create unique index ID_Participante_IND
     on Participante (cpf);

create unique index FKPar_Par_IND
     on Participante_caravana (cpf);

create index FKPARTICIPA_IND
     on Participante_caravana (Nome_caravana);

create unique index ID_participantes_concurso_IND
     on participantes_concurso (codigo_atividade, nome_participante);

create unique index ID_participantes_reuniao_IND
     on participantes_reuniao (codigo_atividade, nome_participante);

create unique index ID_PATROCINA_IND
     on PATROCINA (id_evento, cnpj);

create index EQU_PATRO_Patro_IND
     on PATROCINA (cnpj);

create unique index ID_Patro_Entid_IND
     on Patrocinadora (cnpj);

create unique index ID_premiacao_concurso_IND
     on premiacao_concurso (codigo_atividade, premio, colocacao);

create unique index ID_Promo_Entid_IND
     on Promotora (cnpj);

create unique index ID_PUBLICA_IND
     on PUBLICA (DOI, cpf);

create index EQU_PUBLI_Autor_IND
     on PUBLICA (cpf);

create unique index ID_Rede_Social_IND
     on Rede_Social (url);

create index EQU_Rede__Event_IND
     on Rede_Social (id_evento);

create index EQU_Rede__Promo_IND
     on Rede_Social (cnpj);

create unique index ID_regras_concurso_IND
     on regras_concurso (codigo_atividade, regra);

create unique index ID_REPRESENTA_IND
     on REPRESENTA (cpf_representante, cnpj);

create index EQU_REPRE_Entid_IND
     on REPRESENTA (cnpj);

create unique index ID_Representante_IND
     on Representante (cpf_representante);

create unique index ID_Reuni_Ativi_IND
     on Reuniao (codigo_atividade);

create index EQU_Sessa_Ativi_IND
     on Sessao (codigo_atividade);

create index REF_Sessa_Local_IND
     on Sessao (codigo_local);

create unique index SID_Sessao_IND
     on Sessao (data_inicio);

create unique index ID_Sessa_Ativi_IND
     on Sessao_artigo (codigo_atividade);

create unique index ID_Staff_Parti_IND
     on Staff (cpf);

create unique index ID_tipo_participante_IND
     on tipo_participante (numero_certificado, tipo_participante);

create unique index ID_Tutor_Ativi_IND
     on Tutoria (codigo_atividade);

create unique index ID_UTILIZA_IND
     on UTILIZA (codigo_equipamento, codigo_atividade);

create index REF_UTILI_Ativi_IND
     on UTILIZA (codigo_atividade);

create unique index ID_Veiculo_IND
     on Veiculo (Codigo_veiculo);

create index FKTRANSPORTA_IND
     on Veiculo (Nome_caravana);

create unique index ID_Works_Ativi_IND
     on Workshop (codigo_atividade);
     