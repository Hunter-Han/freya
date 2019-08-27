class RecipesController < ApplicationController

  def index
    ingredient = Ingredient.find(params[:ingredient_id])
    @recipes = ingredient.recipes
  end
end
