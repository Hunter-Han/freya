class Recipe < ApplicationRecord
  belongs_to :ingredient

  mount_uploader :thumbnail_picture, PhotoUploader
end
