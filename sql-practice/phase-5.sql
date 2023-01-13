-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here
-- SELECT * 
--   FROM owners 
--   WHERE first_name 
--   LIKE '%r%'
--   LIMIT 1;



-- -- Find the name and birth year of all the cats ordered by descending birth year
-- SELECT name
--   FROM cats
--   ORDER BY birth_year DESC;
--   -- ORDER BY birth_year ASC;




-- Find the name of the cats who have an owner whose first name begins with an "H"
-- SELECT name
--   FROM cats
--   WHERE name
--   LIKE'%';


-- SELECT name
--   FROM cats
--   JOIN cat_owners ON cats.id = cat_owners.cat_id
--   JOIN owners ON cat_owners.owner_id = owners.id
--   WHERE owners.first_name IN (
--     SELECT first_name
--     FROM owners
--     WHERE first_name
--     LIKE 'H%'
--   );

SELECT name
  FROM cats
  JOIN cat_owners ON cats.id = cat_owners.cat_id
  JOIN owners ON cat_owners.owner_id = owners.id
  WHERE owners.first_name
    LIKE 'H%';






-- -- Find the first and last names of the owner whose cats are born after the year 2015
-- SELECT first_name,last_name
-- FROM cats
--   JOIN cat_owners ON cats.id = cat_owners.cat_id
--   JOIN owners ON cat_owners.owner_id = owners.id
--     WHERE cats.birth_year > 2015;

-- Find names of the cats whose owners are both George Beatty and Melynda Abshire,
--  or just George Beatty, or just Melynda Abshire
-- Your code here
-- SELECT name
-- from cats
--   JOIN cat_owners ON cats.id = cat_owners.cat_id
--   JOIN owners ON cat_owners.owner_id = owners.id
--   WHERE (

--   owners.first_name = 'George' AND owners.last_name = 'Beatty' 
--   AND
--   owners.first_name = 'Melynda' AND owners.last_name = 'Abshire' 
--   )


-- OR (owners.first_name = 'George' AND owners.last_name = 'Beatty')

-- OR (owners.first_name = 'Melynda' AND owners.last_name = 'Abshire')


SELECT name
from cats
  JOIN cat_owners ON cats.id = cat_owners.cat_id
  JOIN owners ON cat_owners.owner_id = owners.id
  WHERE (owners.first_name = 'George' AND owners.last_name = 'Beatty') 
  OR(owners.first_name = 'Melynda' AND owners.last_name = 'Abshire')
  
