class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

    render json: @recipes, include: [:ingredients]
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe
  end

  def create
    @recipe = Recipe.create({ title: params[:title] })

    byebug

    @recipe_ingredient = RecipeIngredient.create({ recipe: @recipe, ingredient_id: params[:ingredient_id] })

    byebug

    render json: @recipe, include: [:ingredients]
  end

end
