class IngredientsController < ApplicationController

  def index
    @county = County.find(params[:county_id])
    @food_group = FoodGroup.find_by(name: params[:food_group])
    @ingredients = @county.ingredients.where(food_group: @food_group)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

end
