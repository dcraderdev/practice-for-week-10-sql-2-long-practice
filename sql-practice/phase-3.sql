-- -- Find Hermione's cats
SELECT cats.name
FROM cats
JOIN cat_owners ON cats.id = cat_owners.cat_id
JOIN owners ON cat_owners.owner_id = owners.id
WHERE owners.first_name = 'Hermione';

-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name
FROM toys
JOIN cats ON toys.cat_id = cats.id
WHERE cats.name IN (
  SELECT cats.name
  FROM cats
  JOIN cat_owners ON cats.id = cat_owners.cat_id
  JOIN owners ON cat_owners.owner_id = owners.id
  WHERE owners.first_name = 'Hermione'
);


