SELECT 
    R.recipeId AS OriginalRecipeID,
    R.title AS OriginalRecipeTitle,
    AR.alternativeRecipeId AS AlternativeRecipeID,
    AltR.title AS AlternativeRecipeTitle
FROM 
    dbo.Recipes R
LEFT JOIN 
    dbo.AlternativeRecipes AR ON R.recipeId = AR.recipeId
LEFT JOIN 
    dbo.Recipes AltR ON AR.alternativeRecipeId = AltR.recipeId
ORDER BY 
    R.recipeId;