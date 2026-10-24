export async function onRequestGet({ env }) {
  return Response.json({ status: 'ok', app: 'GESCOM NOVA PRO', databaseConfigured: Boolean(env.DATABASE_URL), message: env.DATABASE_URL ? 'API active. La connexion Neon est configurée.' : 'API active. Configurez DATABASE_URL et exécutez docs/neon_schema.sql.' });
}
