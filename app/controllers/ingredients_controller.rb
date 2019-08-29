class IngredientsController < ApplicationController
  def search
    @ingredient = Ingredient.find_by(name: params[:query].split.map(&:capitalize).join(' '))
    if @ingredient
      redirect_to ingredient_path(@ingredient)
    else
      redirect_to county_path(current_user.county)
    end
  end

  def index
    @county = County.find(params[:county_id])
    @food_group = FoodGroup.find_by(name: params[:food_group])
    ingr = @county.ingredients.where(food_group: @food_group)
    @ingredients = []
    ingr.each do |ingredient|
      @ingredients << ingredient if ingredient.in_season?
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    flash.now[:alert] = "" if !@ingredient.in_season? && @ingredient

    @vendors = Vendor.where(county: current_user.county)

    @markers = @vendors.map do |vendor|
      {
        lat: vendor.latitude,
        lng: vendor.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { vendor: vendor })
      }
    end
  end
end
