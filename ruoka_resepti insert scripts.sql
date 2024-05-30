-- Insert data into Users table
INSERT INTO dbo.Users (name, email) VALUES   
('Khaled Alkilani', 'magician12@edu.hel.fi'),  
('Saad Qalib', 'alice@hotmail.com'),  
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
('Guacamole', 10, 5, 5),


('Pancakes', 20, 1, 1),  
('Caesar Salad', 15, 2, 2),  
('Grilled Salmon', 25, 3, 3),  
('Apple Pie', 60, 4, 4),
('Hummus', 10, 5, 5);

-- Insert data into Images table
-- Assuming the first recipe has been added and its ID is 1
INSERT INTO dbo.Images (imageUrl, recipeId) VALUES   
('egg.jpg', 1),  
('chicken_sandwich.jpg', 2),  
('spaghetti.jpg', 3),  
('chocolate_cake.jpg', 4),  
('guacamole.jpg', 5),

('pancakes.jpg', 6),  
('caesar_salad.jpg', 7),  
('grilled_salmon.jpg', 8),  
('apple_pie.jpg', 9),  
('hummus.jpg', 10); 

-- Insert data into Ingredients table
INSERT INTO dbo.Ingredients (title, amount, unit, allergyInfo) VALUES   
-- For Scrambled Eggs  
('Eggs', 4, NULL, NULL), -- No allergies  
('Tomatoes', 2, NULL, NULL), -- No allergies 
('Cheese', 100, 'g', 'Lactose'), -- Contains lactose  

-- For Chicken Sandwich  
('Slices of Bread', 2, NULL, 'Gluten'), -- Contains gluten  
('Chicken Breasts', 2, NULL, NULL), -- No allergies  
('Lettuce Leaves', 2, NULL, NULL), -- No allergies  

-- For Spaghetti Bolognese 
('Spaghetti', 200, 'g', 'Gluten'), -- Contains gluten  
('Ground Beef', 300, 'g', NULL), -- No allergies
('Onion', 1, NULL, NULL), -- No allergies  
('Cloves of Garlic', 2, NULL, NULL), -- No allergies  
('Tomato Sauce', 400, 'g', NULL), -- No allergies  

-- For Chocolate Cake  
('Eggs', 4, NULL, NULL), -- No allergies  
('Chocolate', 200, 'g', NULL), -- No allergies  
('Flour', 200, 'g', 'Gluten'), -- Contains gluten  
('Sugar', 200, 'g', NULL), -- No allergies  
('Butter', 100, 'g', NULL), -- No allergies  

-- For Guacamole  
('Avocados', 2, NULL, NULL), -- No allergies  
('Tomato', 1, NULL, NULL), -- No allergies  
('Cloves of Garlic', 1, NULL, NULL), -- No allergies 
('Lime', 1, NULL, NULL), -- No allergies  
('Onion', 0.25, NULL, NULL), -- No allergies


-- Alternatives
('Lactose-Free Cheese', 100, 'g', NULL),  -- Alternative to Cheese
('Gluten-Free Bread', 2, 'slices', NULL), -- Alternative to Slices of Bread
('Gluten-Free Spaghetti', 200, 'g', NULL), -- Alternative to Spaghetti
('Cacao Powder', 200, 'g', NULL), -- Alternative to Chocolate
('Gluten-Free Flour', 200, 'g', NULL), -- Alternative to Flour
('Cilantro', 1, 'bunch', NULL),  -- Alternative to Onion


-- For Pancakes
('Flour', 200, 'g', 'Gluten'),  
('Milk', 300, 'ml', 'Lactose'),  
('Eggs', 2, NULL, NULL),  
('Sugar', 50, 'g', NULL),  
('Butter', 50, 'g', NULL),
-- For Caesar Salad  
('Romaine Lettuce', 1, 'head', NULL),  
('Chicken Breast', 1, NULL, NULL),  
('Caesar Dressing', 50, 'ml', NULL),  
('Croutons', 100, 'g', 'Gluten'),  
('Parmesan Cheese', 20, 'g', 'Lactose'),  
-- For Grilled Salmon  
('Salmon Fillet', 1, NULL, NULL),  
('Olive Oil', 20, 'ml', NULL),  
('Lemon', 1, NULL, NULL),  
('Garlic', 1, 'clove', NULL),  
('Dill', 10, 'g', NULL),  
-- For Apple Pie  
('Apples', 4, NULL, NULL),  
('Pie Crust', 1, NULL, 'Gluten'),  
('Cinnamon', 1, 'tsp', NULL),  
('Sugar', 100, 'g', NULL),  
('Butter', 50, 'g', NULL),  
-- For Hummus  
('Chickpeas', 200, 'g', NULL),  
('Tahini', 50, 'g', NULL),  
('Lemon Juice', 30, 'ml', NULL),  
('Garlic', 1, 'clove', NULL),  
('Olive Oil', 20, 'ml', NULL),

-- Additional alternative ingredients
('Lactose-Free Caesar Dressing', 50, 'ml', NULL), -- Alternative for Caesar Dressing
('Tofu', 1, 'block', NULL), -- Alternative for Salmon Fillet
('Gluten-Free Pie Crust', 1, NULL, NULL), -- Alternative for Pie Crust
('Sunflower Seed Butter', 50, 'g', NULL); -- Alternative for Tahini

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
(4, '1. Preheat the oven to 350�F (175�C). Grease and flour a cake pan.'),  
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
(5, '6. Season with salt and pepper.'),

(6, '1. Mix the flour, milk, eggs, and sugar in a bowl.'),
(6, '2. Heat a non-stick pan and melt a bit of butter.'),
(6, '3. Pour some batter into the pan and cook until bubbles form.'),
(6, '4. Flip the pancake and cook until golden brown.'),
(7, '1. Chop the romaine lettuce and grill the chicken breast.'),
(7, '2. Mix the lettuce with Caesar dressing and top with sliced chicken.'),
(7, '3. Add croutons and grated Parmesan cheese.'),
(8, '1. Preheat the grill and brush the salmon fillet with olive oil.'),
(8, '2. Season with salt, pepper, and lemon juice.'),
(8, '3. Grill the salmon until fully cooked.'),
(9, '1. Preheat the oven to 375°F (190°C).'),
(9, '2. Peel, core, and slice the apples.'),
(9, '3. Mix apples with cinnamon and sugar.'),
(9, '4. Fill the pie crust with apple mixture and top with butter.'),
(9, '5. Bake for 45 minutes until golden brown.'),
(10, '1. Blend chickpeas, tahini, lemon juice, garlic, and olive oil until smooth.'),
(10, '2. Adjust seasoning to taste and serve.');

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
INSERT INTO dbo.RecipeHardware (recipeId, hardware_Id) VALUES   
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
(5, 14),
(6, 1),  -- Pan for Pancakes
(7, 2),  -- Grill for Caesar Salad
(8, 3),  -- Pot for Grilled Salmon
(9, 4),  -- Oven for Apple Pie
(10, 5); -- Bowl for Hummus

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
(5, 20), -- Onion
-- For Pancakes  
(6, 26),  -- Flour  
(6, 27),  -- Milk  
(6, 1),   -- Eggs  
(6, 14),  -- Sugar  
(6, 15),  -- Butter  
-- For Caesar Salad  
(7, 28),  -- Romaine Lettuce  
(7, 5),   -- Chicken Breast  
(7, 29),  -- Caesar Dressing  
(7, 30),  -- Croutons  
(7, 31),  -- Parmesan Cheese  
-- For Grilled Salmon  
(8, 32),  -- Salmon Fillet  
(8, 33),  -- Olive Oil  
(8, 34),  -- Lemon  
(8, 18),  -- Garlic  
(8, 35),  -- Dill  
-- For Apple Pie  
(9, 36),  -- Apples  
(9, 37),  -- Pie Crust  
(9, 38),  -- Cinnamon  
(9, 14),  -- Sugar  
(9, 15),  -- Butter  
-- For Hummus  
(10, 39), -- Chickpeas  
(10, 40), -- Tahini  
(10, 34), -- Lemon Juice  
(10, 18), -- Garlic  
(10, 33); -- Olive Oil

-- Insert data into AlternativeRecipes table
INSERT INTO dbo.AlternativeRecipes (recipeId, alternativeRecipeId) VALUES
(1, 6),  -- Scrambled Eggs has Pancakes as an alternative
(2, 7),  -- Chicken Sandwich has Caesar Salad as an alternative
(3, 8),  -- Spaghetti Bolognese has Grilled Salmon as an alternative
(4, 9),  -- Chocolate Cake has Apple Pie as an alternative
(5, 10), -- Guacamole has Hummus as an alternative
(6, 1),  -- Pancakes have Scrambled Eggs as an alternative
(7, 2),  -- Caesar Salad has Chicken Sandwich as an alternative
(8, 3),  -- Grilled Salmon has Spaghetti Bolognese as an alternative
(9, 4),  -- Apple Pie has Chocolate Cake as an alternative
(10, 5); -- Hummus has Guacamole as an alternative

-- Insert data into Alternative_Ingredients table
-- Assuming the first ingredient has been added and its ID is 1
INSERT INTO AlternativeIngredients (fk_recipeId, fk_ingredientId) VALUES
(1, 21),  -- 'Lactose-Free Cheese' as an alternative to 'Cheese' for 'Scrambled Eggs'
(2, 22),  -- 'Gluten-Free Bread' as an alternative to 'Slices of Bread' for 'Chicken Sandwich'
(3, 23),  -- 'Gluten-Free Spaghetti' as an alternative to 'Spaghetti' for 'Spaghetti Bolognese'
(4, 24),  -- 'Cacao Powder' as an alternative to 'Chocolate' for 'Chocolate Cake'
(5, 26),  -- 'Cilantro' as an alternative to 'Onion' for 'Guacamole'
(6, 41),  -- 'Gluten-Free Flour' as an alternative to 'Flour' for Pancakes
(7, 42),  -- 'Lactose-Free Caesar Dressing' as an alternative to 'Caesar Dressing' for Caesar Salad
(8, 43),  -- 'Tofu' as an alternative to 'Salmon Fillet' for Grilled Salmon
(9, 44),  -- 'Gluten-Free Pie Crust' as an alternative to 'Pie Crust' for Apple Pie
(10, 45); -- 'Sunflower Seed Butter' as an alternative to 'Tahini' for Hummus
