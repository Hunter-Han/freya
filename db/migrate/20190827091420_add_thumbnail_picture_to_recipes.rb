class AddThumbnailPictureToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :thumbnail_picture, :string
  end
end
