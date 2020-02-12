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
    
    params[:ingredient_ids].each do |ingredient_id|
      @recipe_ingredient = RecipeIngredient.create({ recipe: @recipe, ingredient_id: ingredient_id })
    end

    render json: @recipe, include: [:ingredients]
  end

end
