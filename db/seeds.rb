# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipe1 = Recipe.create({ title: "Squash Summer" })
recipe2 = Recipe.create({ title: "Ramen" })

ingredient1 = Ingredient.create({ name: "squash", description: "long and round" })
ingredient2 = Ingredient.create({ name: "pepper", description: "tasty and spicy" })
ingredient3 = Ingredient.create({ name: "broth", description: "better than water" })
ingredient4 = Ingredient.create({ name: "noodles", description: "wheat and long" })
ingredient5 = Ingredient.create({ name: "egg", description: "short and yellow and white" })

recipe_ingredient1 = RecipeIngredient.create({ recipe: recipe1, ingredient: ingredient1 })
recipe_ingredient2 = RecipeIngredient.create({ recipe: recipe1, ingredient: ingredient2 })
recipe_ingredient3 = RecipeIngredient.create({ recipe: recipe1, ingredient: ingredient3 })
recipe_ingredient4 = RecipeIngredient.create({ recipe: recipe2, ingredient: ingredient3 })
recipe_ingredient5 = RecipeIngredient.create({ recipe: recipe2, ingredient: ingredient4 })
recipe_ingredient6 = RecipeIngredient.create({ recipe: recipe2, ingredient: ingredient5 })