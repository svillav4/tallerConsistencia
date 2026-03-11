BEGIN;

UPDATE accounts
SET balance = balance - 100
WHERE owner='Alice';

PREPARE TRANSACTION 'tx1';

COMMIT PREPARED 'tx1';

SELECT * FROM accounts;
/* 900 */