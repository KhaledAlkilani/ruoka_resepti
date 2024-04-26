-- Users table
CREATE TABLE dbo.Users (
    userId INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255),
    email NVARCHAR(255) UNIQUE
);

-- Category table
CREATE TABLE dbo.Category (
    categoryId INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255)
);

-- Recipes table
CREATE TABLE dbo.Recipes (
    recipeId INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255),
    totalPrepTime INT,
    categoryId INT,
    userId INT,
    FOREIGN KEY (categoryId) REFERENCES dbo.Category(categoryId),
    FOREIGN KEY (userId) REFERENCES dbo.Users(userId)
);

-- Images table
CREATE TABLE dbo.Images (
    imageId INT IDENTITY(1,1) PRIMARY KEY,
    imageUrl NVARCHAR(255),
    recipeId INT,
    FOREIGN KEY (recipeId) REFERENCES dbo.Recipes(recipeId)
);

-- Ingredients table
CREATE TABLE dbo.Ingredients (
    ingredientId INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255),
    amount INT,
    unit NVARCHAR(50),
    allergyInfo NVARCHAR(255)
);

-- Instructions table
CREATE TABLE dbo.Instructions (
    instructionId INT IDENTITY(1,1) PRIMARY KEY,
    recipeId INT,
    description NVARCHAR(MAX),
    FOREIGN KEY (recipeId) REFERENCES dbo.Recipes(recipeId)
);

-- Cooking hardware table
CREATE TABLE dbo.CookingHardware (
    hardwareId INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255)
);

-- Recipe_Hardware junction table
CREATE TABLE dbo.RecipeHardware (
    recipeId INT,
    hardwareId INT,
    PRIMARY KEY (recipeId, hardwareId),
    FOREIGN KEY (recipeId) REFERENCES dbo.Recipes(recipeId),
    FOREIGN KEY (hardwareId) REFERENCES dbo.CookingHardware(hardwareId)
);

-- Recipe_Ingredients junction table
CREATE TABLE dbo.RecipeIngredients (
    recipeId INT,
    ingredientId INT,
    PRIMARY KEY (recipeId, ingredientId),
    FOREIGN KEY (recipeId) REFERENCES dbo.Recipes(recipeId),
    FOREIGN KEY (ingredientId) REFERENCES dbo.Ingredients(ingredientId)
);

-- Alternative_Recipes table
CREATE TABLE dbo.AlternativeRecipes (
    alternativeRecipeId INT IDENTITY(1,1) PRIMARY KEY,
    recipeId INT,
    FOREIGN KEY (recipeId) REFERENCES dbo.Recipes(recipeId)
);

-- Alternative_Ingredients table
CREATE TABLE dbo.AlternativeIngredients (
    alternativeIngredientId INT IDENTITY(1,1) PRIMARY KEY,
    fk_recipeId INT,
    fk_ingredientId INT,
    FOREIGN KEY (fk_recipeId) REFERENCES dbo.Recipes(recipeId),
    FOREIGN KEY (fk_ingredientId) REFERENCES dbo.Ingredients(ingredientId)
);
