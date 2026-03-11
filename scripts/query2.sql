BEGIN;

INSERT INTO transfers(from_account,to_account,amount)
VALUES (1,2,100);

PREPARE TRANSACTION 'tx1';

COMMIT PREPARED 'tx1';

SELECT * FROM transfers;