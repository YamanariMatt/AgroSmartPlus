# AgroSmartPlus

# Banco de Dados - Sistema com Usuário, Empresa e ADM

## Estrutura

### Tabela: `usuarios`
Contém os dados básicos de qualquer tipo de usuário.

- `id`: chave primária
- `nome`: nome completo
- `email`: único por usuário
- `senha`: senha criptografada
- `tipo_usuario`: pode ser 'usuario', 'empresa' ou 'adm'

### Tabela: `cooperativas`
Contém os dados específicos das empresas, referenciando um usuário.

- `usuario_id`: referencia um `usuario` com tipo 'empresa'
- `nome_empresa`: nome comercial
- `cnpj`: único para cada empresa

### Tabela: `administradores`
Contém os dados específicos de administradores.

- `usuario_id`: referencia um `usuario` com tipo 'adm'
- `permissao_geral`: se TRUE, tem controle total

## Uso
1. Execute `schema.sql` para criar as tabelas.
2. Execute `seed.sql` para popular com dados de exemplo.
3. Integre no backend conforme o tipo de usuário (acesso baseado em `tipo_usuario`).

