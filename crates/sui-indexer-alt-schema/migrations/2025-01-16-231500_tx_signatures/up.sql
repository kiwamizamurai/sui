ALTER TABLE kv_transactions
ADD COLUMN IF NOT EXISTS raw_signatures BYTEA NOT NULL;
