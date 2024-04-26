-- Insert data into Users table
INSERT INTO dbo.Users (name, email) VALUES   
('Harry Potter', 'magician12@edu.hel.fi'),  
('Alice Smith', 'alice@hotmail.com'),  
('Mikel Arteta', 'bob21972@outlook.com'),  
('Emma Stones', 'emma.stones@gmail.com'),  
('Joni Lehtinen', 'mike00@hotmail.com');  

-- Insert data into Category table  
INSERT INTO dbo.Category (name) VALUES   
('Breakfast'),  
('Lunch'),  
('Dinner'),  
('Dessert'),
('Snacks'); 

-- Insert data into Recipes table
-- Assuming the first user and category have been added and their IDs are 1
INSERT INTO dbo.Recipes (title, totalPrepTime, categoryId, userId) VALUES   
('Scrambled Eggs', 15, 1, 1),  
('Chicken Sandwich', 20, 2, 2),  
('Spaghetti Bolognese', 30, 3, 3),  
('Chocolate Cake', 45, 4, 4),
('Guacamole', 10, 5, 5);

-- Insert data into Images table
-- Assuming the first recipe has been added and its ID is 1
INSERT INTO dbo.Images (imageUrl, recipeId) VALUES   
('egg.jpg', 1),  
('chicken_sandwich.jpg', 2),  
('spaghetti.jpg', 3),  
('chocolate_cake.jpg', 4),  
('guacamole.jpg', 5); 

-- Insert data into Ingredients table
INSERT INTO dbo.Ingredients (title, amount, unit, allergyInfo) VALUES   
-- For Scrambled Eggs  
('Eggs', 4, NULL, NULL), -- No allergies  
( 'Tomatoes', 2, NULL, NULL), -- No allergies 
( 'Cheese', 100, 'g', 'Lactose'), -- Contains lactose  
-- For Chicken Sandwich  
( 'Slices of Bread', 2, NULL, 'Gluten'), -- Contains gluten  
( 'Chicken Breasts', 2, NULL, NULL), -- No allergies  
( 'Lettuce Leaves', 2, NULL, NULL), -- No allergies  
-- For Spaghetti Bolognese 
( 'Spaghetti', 200, 'g', 'Gluten'), -- Contains gluten  
( 'Ground Beef', 300, 'g', NULL), -- No allergies
( 'Onion', 1, NULL, NULL), -- No allergies  
( 'Cloves of Garlic', 2, NULL, NULL), -- No allergies  
( 'Tomato Sauce', 400, 'g', NULL), -- No allergies  
-- For Chocolate Cake  
( 'Eggs', 4, NULL, NULL), -- No allergies  
( 'Chocolate', 200, 'g', NULL), -- No allergies  
( 'Flour', 200, 'g', 'Gluten'), -- Contains gluten  
( 'Sugar', 200, 'g', NULL), -- No allergies  
( 'Butter', 100, 'g', NULL), -- No allergies  
-- For Guacamole  
( 'Avocados', 2, NULL, NULL), -- No allergies  
( 'Tomato', 1, NULL, NULL), -- No allergies  
( 'Cloves of Garlic', 1, NULL, NULL), -- No allergies 
( 'Lime', 1, NULL, NULL), -- No allergies  
( 'Onion', 0.25, NULL, NULL), -- No allergies
('Lactose-Free Cheese', 100, 'g', NULL),  -- Alternative to Cheese
('Gluten-Free Bread', 2, 'slices', NULL), -- Alternative to Slices of Bread
('Gluten-Free Spaghetti', 200, 'g', NULL), -- Alternative to Spaghetti
('Cacao Powder', 200, 'g', NULL), -- Alternative to Chocolate
('Gluten-Free Flour', 200, 'g', NULL); -- Alternative to Flour

-- Insert data into Instructions table
-- Assuming the first recipe has been added and its ID is 1
INSERT INTO dbo.Instructions (recipeId, description) VALUES   
(1, '1. Crack the eggs into a bowl and beat them lightly.'),
(1, '2. Heat a non-stick frying pan over medium heat.'),  
(1, '3. Add the beaten eggs to the pan and stir gently.'),  
(1, '4. While the eggs are cooking, chop the tomatoes and cheese.'),  
(1, '5. Sprinkle the chopped tomatoes and cheese over the eggs and continue to cook until the eggs are set.'),  
(2, '1. Grill or pan-fry the chicken breasts until fully cooked.'),
(2, '2. Toast the bread slices.'),  
(2, '3. Wash and dry the lettuce leaves.'),  
(2, '4. Assemble the sandwich by placing the cooked chicken breasts and lettuce leaves between the toasted bread slices.'),  
(3, '1. Cook spaghetti according to package instructions until al dente.'),  
(3, '2. In a separate pan, brown the ground beef over medium heat.'),  
(3, '3. Chop the onion and garlic finely.'),  
(3, '4. Add the chopped onion and garlic to the pan with the ground beef and cook until softened.'),  
(3, '5. Pour in the tomato sauce and simmer for 10-15 minutes, stirring occasionally.'), 
(4, '1. Preheat the oven to 350°F (175°C). Grease and flour a cake pan.'),  
(4, '2. Melt the chocolate and butter together in a heatproof bowl set over a pot of simmering water.'),  
(4, '3. In a separate bowl, beat the eggs and sugar until light and fluffy.'),  
(4, '4. Gradually fold in the melted chocolate mixture.'), 
(4, '5. Sift in the flour and gently fold until just combined.'),  
(4, '6. Pour the batter into the prepared cake pan and bake for 25-30 minutes or until a toothpick inserted into the center comes out clean.'),  
(5, '1. Cut the avocados in half and remove the pits. Scoop the flesh into a bowl.'),  
(5, '2. Mash the avocado flesh with a fork until smooth or desired consistency is reached.'),  
(5, '3. Finely dice the tomato, garlic, and onion.'),  
(5, '4. Add the diced tomato, garlic, and onion to the mashed avocado.'),  
(5, '5. Squeeze the lime juice over the mixture and stir to combine.'),  
(5, '6. Season with salt and pepper.');   

-- Insert data into Cooking hardware table
INSERT INTO dbo.CookingHardware (title) VALUES   
('Pan'),  
('Grill'),  
('Pot'),  
('Oven'),  
('Bowl'),  
('Spatula'),  
('Knife'),  
('Strainer'),  
('Mixer'),  
('Spoon');  

-- Insert data into Recipe_Hardware junction table
-- Assuming the first recipe has been added and its ID is 1, and two hardware items have IDs 1 and 2
INSERT INTO dbo.RecipeHardware (recipeId, hardwareId) VALUES   
(1, 1),
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(1, 6),   
(1, 7),  
(2, 8),   
(2, 9),   
(3, 10),   
(3, 11),  
(4, 12),   
(5, 13),   
(5, 14);  

-- Insert data into Recipe_Ingredients junction table
-- Assuming the first recipe has been added and its ID is 1, and two ingredients have IDs 1 and 2
INSERT INTO dbo.RecipeIngredients (recipeId, ingredientId) VALUES   
(1, 1), -- Eggs 
(1, 2), -- Tomatoes
(1, 3), -- Cheese 
-- For Chicken Sandwich  
(2, 4), -- Bread 
(2, 5), -- Chicken Breast 
(2, 6), -- Lettuce 
-- For Spaghetti Bolognese  
(3, 7), -- Spaghetti  
(3, 8), -- Ground beef 
(3, 9), -- Onion 
(3, 10), -- Garlic
(3, 11), -- Tomato sauce  
-- For Chocolate Cake  
(4, 1), -- Eggs  
(4, 12), -- Chocolate 
(4, 13), -- Flour
(4, 14), -- Sugar  
(4, 15), -- Butter  
-- For Guacamole  
(5, 16), -- Avocados  
(5, 17), -- Tomato  
(5, 18), -- Garlic  
(5, 19), -- Lime  
(5, 20); -- Onion   

-- Insert data into Alternative_Recipes table
-- Assuming the first recipe has been added and its ID is 1
INSERT INTO dbo.AlternativeRecipes (recipeId) VALUES   
(1),  
(2),  
(3),  
(4),  
(5);

-- Insert data into Alternative_Ingredients table
-- Assuming the first ingredient has been added and its ID is 1
INSERT INTO dbo.AlternativeIngredients (fk_recipeId, fk_ingredientId) VALUES
(1, 21),  -- 'Lactose-Free Cheese' as an alternative to 'Cheese' for 'Scrambled Eggs'
(2, 22),  -- 'Gluten-Free Bread' as an alternative to 'Slices of Bread' for 'Chicken Sandwich'
(3, 23),  -- 'Gluten-Free Spaghetti' as an alternative to 'Spaghetti' for 'Spaghetti Bolognese'
(4, 24),  -- 'Cacao Powder' as an alternative to 'Chocolate' for 'Chocolate Cake'
(4, 25); 
