class Review < ApplicationRecord
  belongs_to :vendor
  belongs_to :user
end
