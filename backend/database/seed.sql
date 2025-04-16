
INSERT INTO usuarios (nome, email, senha, tipo_usuario) VALUES
('João da Silva', 'joao@email.com', 'senha123', 'usuario'),
('Empresa X', 'empresa@email.com', 'senha456', 'empresa'),
('Admin Master', 'admin@email.com', 'senha789', 'adm');
INSERT INTO empresas (usuario_id, nome_empresa, cnpj) VALUES
(2, 'Empresa X Tecnologia', '12.345.678/0001-99');
INSERT INTO administradores (usuario_id, permissao_geral) VALUES
(3, TRUE);
