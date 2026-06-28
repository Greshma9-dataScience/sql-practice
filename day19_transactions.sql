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


ACID Properties
A – Atomicity
అన్ని operations success అవ్వాలి, లేకపోతే ఏదీ save కాకూడదు.
C – Consistency
Database valid state లో ఉండాలి.
I – Isolation
ఒక transaction ఇంకో transaction ని disturb చేయకూడదు.
D – Durability
COMMIT అయిన తర్వాత data permanent.