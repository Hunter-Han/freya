class Vendor < ApplicationRecord
  belongs_to :county

  has_many :ingredient_at_vendors
  has_many :ingredients, through: :ingredient_at_vendors

  mount_uploader :picture, PhotoUploader
end
