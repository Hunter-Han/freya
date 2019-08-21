class Ingredient < ApplicationRecord
  belongs_to :food_group

  has_many :ingredient_seasons
  has_many :ingredient_at_vendors

  mount_uploader :thumbnail_picture, PhotoUploader
  mount_uploader :background_picture, PhotoUploader
end
