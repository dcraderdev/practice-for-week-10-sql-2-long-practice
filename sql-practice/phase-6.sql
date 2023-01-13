-- Update the toy with the name of "Cheetos" to have a name of "Pooky"


UPDATE toys
SET name = 'Pooky'
WHERE name = 'Cheetos';


-- UPDATE toys
-- SET name = 'Cheetos'
-- WHERE name = 'Pooky';



SELECT toys.name
FROM toys;