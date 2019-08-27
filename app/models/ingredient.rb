class Ingredient < ApplicationRecord
  belongs_to :food_group

  has_many :ingredient_seasons
  has_many :ingredient_at_vendors
  has_many :recipes

  mount_uploader :thumbnail_picture, PhotoUploader
  mount_uploader :background_picture, PhotoUploader

  def in_season?
    season = self.ingredient_seasons.first
    current_month = Date.today
    date_range = (season.start..season.end)
    date_range.include? current_month
  end

end
