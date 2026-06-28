commit:

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

COMMIT;


rollback:

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

ROLLBACK;


savepoint:

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

SAVEPOINT sp1;

UPDATE accounts
SET balance = balance + 500
WHERE id = 2;

ROLLBACK TO sp1;

COMMIT;