module.exports = {
  // Specify how to link database
  db: {
    type: 'postgresdb',
    postgres: {
      connection: {
        host: process.env.DB_POSTGRESDB_HOST,
        user: process.env.DB_POSTGRESDB_USER,
        database: process.env.DB_POSTGRESDB_DATABASE,
        password: process.env.DB_POSTGRESDB_PASSWORD,
        port: parseInt(process.env.DB_POSTGRESDB_PORT || '5432', 10),
        sslmode: 'require',
        ssl: true, // make sure activating SSL
      }
    }
  }
};
