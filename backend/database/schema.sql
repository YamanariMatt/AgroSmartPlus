CREATE TABLE cooperativa (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) NOT NULL UNIQUE,
    nome_cooperativa VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL
);


CREATE TABLE usuario_final (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(20) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL,
    nome_propriedade VARCHAR(100) NOT NULL
);


CREATE TABLE visualizacao_preco (
    id SERIAL PRIMARY KEY,
    cooperativa_id INTEGER REFERENCES cooperativa(id),
    tipo_cooperativa VARCHAR(50) NOT NULL CHECK (tipo_cooperativa IN ('COAMO', 'LAR', 'COCAMAR')),
    formas_contato TEXT
);


CREATE TABLE perfil (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(20) NOT NULL,
    acessibilidade BOOLEAN DEFAULT FALSE,
    configuracao JSONB DEFAULT '{}'::jsonb,
    tipo_usuario VARCHAR(20) NOT NULL CHECK (tipo_usuario IN ('usuario_final', 'cooperativa'))
);