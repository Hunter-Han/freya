class Ingredient < ApplicationRecord
  belongs_to :food_group

  has_many :ingredient_seasons
  has_many :ingredient_at_vendors
end
