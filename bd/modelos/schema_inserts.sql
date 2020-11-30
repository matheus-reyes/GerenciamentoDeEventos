-- Banco de Dados SCHEMA
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
     senha varchar(255) not null,
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
     constraint ID_INGRESSO_ID primary key (numero_ingresso));

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
     senha varchar(255) not null,
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
     
use eventos_cientificos;

/* Inserção Parte 1 */

/* Inserção Dados Entidade */

INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (37159434000115, "Avenida dos Imigrantes", "Bragança Paulista", "São Paulo", "12903-130", "150", "Promotora de Eventos S.A", "eventossa@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (21246221000199, "Avenida Paulista", "São Paulo", "São Paulo", "03619-130", "100", "Promotora de Eventos SP", "eventossp@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (84963187000151, "Rua das Maritacas", "Bragança Paulista", "São Paulo", "12903-160", "100", "Promotora Bragança Eventos", "brageventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (19741351000141, "Rua Operação", "São Paulo", "São Paulo", "05655-130", "99", "Promotora Cubatão Eventos", "cubataoeventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (39716013000120, "Rua Teresópolis", "Rio de Janeiro", "Rio de Janeiro", "94443-456", "37", "Promotora Confort Eventos", "conforteventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", true, false, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (11524184000187, "Rua Almeida", "Rio de Janeiro", "Rio de Janeiro", "94446-446", "27", "Zalinha Eventos", "zalinhaventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (29532264000178, "Avenida Operária", "São Paulo", "São Paulo", "03567-456", "17", "Zen Eventos", "zeneventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (14578574000156, "Rua Hernandes", "São Paulo", "São Paulo", "05567-456", "493", "Dalaz Eventos", "dalazeventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (27349772000111, "Rua Fernandópolis", "Fernandópolis", "São Paulo", "95867-456", "3793", "Biro Eventos", "biroeventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, false, true);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) 
VALUES (07755256000158, "Rua Aparecida", "Rio de Janeiro", "Rio de Janeiro", "94443-434", "37562", "RJ Eventos", "rjeventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, false, true);

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

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Kleberson Gonçalves", 43269456701, 34504231, "kleberson@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490931, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Adelia Silva", 43269456702, 34504232, "adelia@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490932, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Matheus Felix", 43269456703, 34504233, "matheus@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490933, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Dayane Silva", 43269456704, 34504234, "dayane@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490934, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Ricardo Pereira", 43269456705, 34504235, "Ricardo@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490935, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bianca Dias", 62207591338, 01014001, "biancadias@usp.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 996324472, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helena Matsuda", 35712439866, 01015001, "hmatsuda@usp.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 981650032, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Luciana Karmizec", 39720465821, 01679001, "karmizec@usp.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 945459966, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernando Alburqueque", 29169407291, 01027001, "fernando.alburqueque@usp.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 997246684, false, true, true, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fagner Pereira", 43269456725, 34504255, "fagner@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490955, false, true, false, false, true, false, false, false);
/* Inserção Dados Palestrante */

INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456701, "DEFREX", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456702, "FLY", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456703, "FREG", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456704, "XIAM", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456705, "AMAZIN", "minicurriculo.pdf");
INSERT INTO palestrante (cpf, filiacao, minicurriculo) VALUES (43269456725, "AMUZIN", "minicurriculo.pdf");

/* Inserção Dados Participante - Ouvinte e Instrutor */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Kleber Silva", 43269456706, 34504236, "kleber@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490936, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Marjure Gonçalves", 43269456707, 34504237, "marjure@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490937, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("André Felix", 43269456708, 34504238, "andre@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490938, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Victoria Silva", 43269456709, 34504239, "victoria@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490939, false, false, true, false, false, true, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Reginaldo Pereira", 43269456710, 34504240, "Reginaldo@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490940, false, false, true, false, false, true, false, false);

/* Inserção Dados Instrutor */

INSERT INTO instrutor (cpf) VALUES (43269456706);
INSERT INTO instrutor (cpf) VALUES (43269456707);
INSERT INTO instrutor (cpf) VALUES (43269456708);
INSERT INTO instrutor (cpf) VALUES (43269456709);
INSERT INTO instrutor (cpf) VALUES (43269456710);

/* Inserção Dados Participante - Staff */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Amanda Silva", 43269456711, 34504241, "amanda@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490941, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Adriana Gonçalves", 43269456712, 34504242, "adriana@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490942, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bianca Felix", 43269456713, 34504243, "bianca@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490943, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Barbara Silva", 43269456714, 34504244, "barbara@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490944, true, false, false, false, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Bruna Pereira", 43269456715, 34504245, "bruna@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490945, true, false, false, false, false, false, false, false);

/* Inserção Dados Staff */

INSERT INTO staff (cpf) VALUES (43269456711);
INSERT INTO staff (cpf) VALUES (43269456712);
INSERT INTO staff (cpf) VALUES (43269456713);
INSERT INTO staff (cpf) VALUES (43269456714);
INSERT INTO staff (cpf) VALUES (43269456715);

/* Inserção Dados Participante - Organizador */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Carol Silva", 43269456716, 34504246, "carol@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490946, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Eduardo Gonçalves", 43269456717, 34504247, "eduardo@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490947, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Eduarda Felix", 43269456718, 34504248, "eduarda@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490948, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Edmundo Silva", 43269456719, 34504249, "edmundo@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490949, false, false, false, true, false, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Felipe Pereira", 43269456720, 34504250, "felipe@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490950, false, false, false, true, false, false, false, false);

/* Inserção Dados Participante - Ministrante_tutoria */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Felix Silva", 43269456721, 34504251, "felix@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490951, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernando Gonçalves", 43269456722, 34504252, "fernando@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490952, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fernanda Felix", 43269456723, 34504253, "fernanda@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490953, false, false, false, false, true, false, false, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Fátima Silva", 43269456724, 34504254, "fátima@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490954, false, false, false, false, true, false, false, false);


/* Inserção Dados Ministrante_Tutoria */

INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456721, "DEFREX", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456722, "LOTHOZ", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456723, "DANFREX", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456724, "FETIZ", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456725, "XIETEX", "minicurriculo.pdf");
INSERT INTO ministrante_tutoria (cpf, afiliacao, minicurriculo) VALUES (43269456705, "XIITEX", "minicurriculo.pdf");
UPDATE participante SET Ministrante_tutoria = 1 WHERE (cpf = 43269456705);

/* Inserção Dados Participante - avaliador */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gabriel Silva", 43269456726, 34504256, "gabriel@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490956, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gabriela Gonçalves", 43269456727, 34504257, "gabriela@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490957, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Gustavo Felix", 43269456728, 34504258, "gustavo@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490958, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Giovanna Silva", 43269456729, 34504259, "giovanna@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490959, false, false, false, false, false, false, true, false);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Giovanne Pereira", 43269456730, 34504260, "giovanne@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490960, false, false, false, false, false, false, true, false);

/* Inserção Avaliador */

INSERT INTO avaliador (cpf) VALUES (43269456726);
INSERT INTO avaliador (cpf) VALUES (43269456727);
INSERT INTO avaliador (cpf) VALUES (43269456728);
INSERT INTO avaliador (cpf) VALUES (43269456729);
INSERT INTO avaliador (cpf) VALUES (43269456730);

/* Inserção Dados Participante - Ouvinte e Autor_Artigo */

INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Hannah Silva", 43269456731, 34504261, "hannah@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490961, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helise Gonçalves", 43269456732, 34504262, "helise@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490962, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Heliana Felix", 43269456733, 34504263, "heliana@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490963, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Helio Silva", 43269456734, 34504264, "helio@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490964, false, false, true, false, false, false, false, true);
INSERT INTO participante (nome, cpf, cep, e_mail, senha, telefone, Staff, Palestrante, Ouvinte, Organizador, Ministrante_tutoria, Instrutor, Avaliador, Autor_Artigo) 
VALUES ("Ian Pereira", 43269456735, 34504265, "ian@contato.com", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", 458490965, false, false, true, false, false, false, false, true);

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
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (9 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (32 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456701);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (25 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (32 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456702);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (25 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456703);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456704);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (2 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (23 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (28 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456705);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (35 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456706);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456707);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456708);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (20 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (34 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (36 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (37 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456709);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (10 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (31 , 43269456710);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (11 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (21 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456731);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (19 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456732);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (28 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456733);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (1 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (22 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (33 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (39 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (40 , 43269456734);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (7 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (27 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (29 , 43269456735);
INSERT INTO inscreve (codigo_atividade, cpf) VALUES (30 , 43269456735);


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

INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) VALUES (17359434000511, "Avenida Paulista", "São Paulo", "São Paulo", "01310-940", "900", "Pneus S.A", "pneus@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) VALUES (22259434000333, "Avenida Brigadeiro Faria Lima", "São Paulo", "São Paulo", "05426-200", "1000", "Planos de Saude S.A", "saude@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) VALUES (12359434000321, "Avenida Pompéia", "São Paulo", "São Paulo", "05022-000", "1030", "Tecnologia e Segurança Privada S.A", "tecseguranca@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) VALUES (55559434000432, "Avenida Alcântara Machado", "São Paulo", "São Paulo", "03302-000", "3456", "Elétrica Segurança", "eletricsecurity@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, true, false);
INSERT INTO entidade (cnpj, end_logradouro, end_cidade, end_estado, end_cep, end_numero, nome_entidade, email, senha, Promotora, Patrocinadora, Organizadora) VALUES (25559434000522, "Avenida Assis Ribeiro", "São Paulo", "São Paulo", "03717-002", "1600", "Carreta Furacão Siga em Frente", "carretaEventos@contato.br", "$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i", false, true, false);

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
	(43269456716, '2021-01-19', '2022-01-22',11524184000187),
	(43269456717, '2020-11-16', '2022-11-20',11524184000187),
    (43269456718, '2020-09-21', '2021-03-25',11524184000187),
    (43269456719, '2020-11-04', '2021-04-07',11524184000187),
    (43269456720, '2021-06-03', '2022-04-05',11524184000187),
    (43269456731, '2020-08-01', '2021-06-15',11524184000187),
    (43269456733, '2021-01-22', '2021-06-09',11524184000187),
    (43269456734, '2021-03-14', '2021-07-11',11524184000187);

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

     