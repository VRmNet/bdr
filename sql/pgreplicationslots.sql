--
-- Access the extended bdr.pg_replication_slots view
-- with the data backported from 9.5 and 9.6.
--

SELECT 1
FROM pg_stat_replication
INNER JOIN bdr.pg_replication_slots USING (pid)
WHERE confirmed_flush_lsn IS NOT NULL;
