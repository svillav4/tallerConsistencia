BEGIN;

INSERT INTO audit_log(event)
VALUES ('transfer 100 from alice to bob');

PREPARE TRANSACTION 'tx1';

COMMIT PREPARED 'tx1';

SELECT * FROM audit_log;