-- Update unit to 'cups' for the ingredient with ingredientId = 5
UPDATE dbo.Ingredients
SET unit = 'cups'
WHERE ingredientId = 5;

-- Retrieve all ingredients from the Ingredients table
SELECT * FROM dbo.Ingredients;
