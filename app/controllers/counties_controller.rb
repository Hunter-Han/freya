require 'pry-byebug'
class CountiesController < ApplicationController
  def search
    @county = County.find_by(name: params[:query].capitalize)
    if @county
      current_user.county_id = @county.id if current_user
      current_user.save
      redirect_to county_path(@county)
    else
      redirect_to root_path
    end
  end

  def show
    @county = County.find(params[:id])
  end

  def index
    @counties = County.all
  end
end
