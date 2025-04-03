CREATE TABLE IF NOT EXISTS login (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    apelido VARCHAR(100) NOT NULL,
    senha TEXT NOT NULL,
    telefone VARCHAR(15) UNIQUE NOT NULL,
    uf CHAR(2) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    nivel_acesso VARCHAR(10) CHECK (nivel_acesso IN ('ADM', 'Usuário')) NOT NULL
);
