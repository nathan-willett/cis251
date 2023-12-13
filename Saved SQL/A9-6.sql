use recipesexample;

SELECT Recipe_Classes.RecipeClassDescription
AS IndexName, 'Recipe Class' AS Type
FROM Recipe_Classes

UNION
SELECT Recipes.RecipeTitle, 'Recipe' AS Type 
FROM Recipes

UNION
SELECT Ingredients.IngredientName,
'Ingredient' AS Type
FROM Ingredients
ORDER BY 1, 2 DESC