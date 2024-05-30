-- Retrieve recipes that only contain specified ingredients (ingredient IDs: 1, 2, 3)
SELECT 
    r.recipeId, 
    r.title 
FROM 
    dbo.Recipes r
WHERE NOT EXISTS (
    SELECT 1 
    FROM dbo.RecipeIngredients ri
    WHERE ri.recipeId = r.recipeId
    AND ri.ingredientId NOT IN (
        SELECT ingredientId FROM dbo.Ingredients WHERE ingredientId IN (1, 2, 3)
    )
)
GROUP BY r.recipeId, r.title;
