require('dotenv').config();
console.log("Senha do banco:", process.env.DB_PASSWORD);

const fs = require('fs'); // Módulo para ler arquivos
const path = require('path'); // Módulo para manipular caminhos
const { Pool } = require('pg'); // Biblioteca para conexão com PostgreSQL
require('dotenv').config(); // Para carregar variáveis do .env

// Criar pool de conexão com PostgreSQL
const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

// Função para executar um arquivo SQL
const runSQLFile = async (filePath) => {
  try {
    const query = fs.readFileSync(filePath, 'utf8'); // Lê o arquivo SQL
    await pool.query(query); // Executa a query no banco
    console.log(`Executado: ${filePath}`);
  } catch (err) {
    console.error(`Erro ao executar ${filePath}:`, err);
  }
};

// Função para configurar o banco de dados
const setupDatabase = async () => {
  await runSQLFile(path.join(__dirname, '../database/schema.sql'));
  await runSQLFile(path.join(__dirname, '../database/seed.sql'));
  pool.end(); // Fecha a conexão
};

setupDatabase();
