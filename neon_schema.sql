-- GESCOM NOVA PRO — schéma minimal de synchronisation de sauvegarde
-- À exécuter dans Neon SQL Editor avant de tester /api/sync.
-- IMPORTANT : ce stockage de snapshot n'est pas une authentification multi-tenant complète.
-- Avant usage commercial, protéger chaque tenantId avec une authentification serveur vérifiée.
CREATE TABLE IF NOT EXISTS gescom_snapshots (
  tenant_id TEXT PRIMARY KEY,
  payload JSONB NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS gescom_snapshots_updated_at_idx ON gescom_snapshots(updated_at);
