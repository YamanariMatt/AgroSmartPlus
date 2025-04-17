INSERT INTO cooperativa (email, senha, cnpj, nome_cooperativa, uf)
VALUES 
('coamo@email.com', 'senha123', '12345678000101', 'Coamo', 'PR'),
('lar@email.com', 'lar123', '98765432000109', 'Lar', 'PR'),
('cocamar@email.com', 'cocamar123', '11223344000155', 'Cocamar', 'SP');


INSERT INTO usuario_final (email, cpf_cnpj, senha, uf, nome_propriedade)
VALUES 
('joao@email.com', '12345678900', 'joao123', 'PR', 'Sítio São João'),
('maria@email.com', '98765432100', 'maria123', 'SP', 'Fazenda Bela Vista');


INSERT INTO visualizacao_preco (cooperativa_id, tipo_cooperativa, formas_contato)
VALUES
(1, 'COAMO', 'WhatsApp: (44) 99999-9999'),
(2, 'LAR', 'Telefone: (45) 8888-8888'),
(3, 'COCAMAR', 'Email: contato@cocamar.com');


INSERT INTO perfil (usuario_id, nome, cpf_cnpj, acessibilidade, configuracao, tipo_usuario)
VALUES 
(1, 'João da Silva', '12345678900', true, '{"tema": "escuro"}', 'usuario_final'),
(2, 'Maria Oliveira', '98765432100', false, '{"idioma": "pt-br"}', 'usuario_final'),
(1, 'Administrador Coamo', '12345678000101', false, '{"tema": "claro"}', 'cooperativa');
