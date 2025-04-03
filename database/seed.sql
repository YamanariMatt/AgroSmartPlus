INSERT INTO login (email, apelido, senha, telefone, uf, cidade, nivel_acesso)
VALUES ('admin@email.com', 'Administrador', 'senha123', '11999999999', 'SP', 'São Paulo', 'ADM')
ON CONFLICT (email) DO NOTHING;
