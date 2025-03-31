const { Pool } = require('pg'); // Importa o Pool do pg para conexão com o banco

// Cria uma conexão com o banco PostgreSQL
const pool = new Pool({
    user: 'seu_usuario',         // Seu usuário do PostgreSQL
    host: 'localhost',           // Endereço do servidor (localhost para uso local)
    database: 'agrosmart',       // Nome do banco de dados
    password: 'sua_senha',       // Senha do banco de dados
    port: 5432,                  // Porta padrão do PostgreSQL
});

module.exports = pool;  // Exporta para ser usado em outros arquivos
