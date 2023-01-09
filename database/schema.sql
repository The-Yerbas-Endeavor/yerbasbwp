DROP TABLE IF EXISTS utxos;
CREATE TABLE IF NOT EXISTS utxos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  txid TEXT NOT NULL,
  vout INTEGER NOT NULL,
  height INTEGER NOT NULL,
  address TEXT NOT NULL,
  amount TEXT NOT NULL
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_utxos_utxo ON utxos (txid, vout);
CREATE INDEX IF NOT EXISTS idx_utxos_adderss ON utxos (address);
