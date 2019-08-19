class IngredientSeason < ApplicationRecord
  belongs_to :ingredient
  belongs_to :county
end
