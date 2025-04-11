CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario VARCHAR(20) NOT NULL CHECK (tipo_usuario IN ('usuario', 'cooperativa', 'adm'))
);


CREATE TABLE cooperativas (
    id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE NOT NULL REFERENCES usuarios(id),
    nome_cooperativa VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) NOT NULL UNIQUE
);


CREATE TABLE administradores (
    id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE NOT NULL REFERENCES usuarios(id),
    permissao_geral BOOLEAN DEFAULT TRUE
);
