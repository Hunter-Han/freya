class IngredientsController < ApplicationController
  def search
    @ingredient = Ingredient.find_by(name: params[:query].capitalize)
    if @ingredient
      redirect_to ingredient_path(@ingredient)
    else
      redirect_to county_path(current_user.county)
    end
  end

  def index
    @county = County.find(params[:county_id])
    @food_group = FoodGroup.find_by(name: params[:food_group])
    @ingredients = @county.ingredients.where(food_group: @food_group)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
