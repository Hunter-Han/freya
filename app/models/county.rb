class County < ApplicationRecord
  has_many :users
  has_many :vendors
  has_many :ingredient_seasons
  has_many :ingredients, through: :ingredient_seasons
end
