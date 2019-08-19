class AddColumntoIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :thumbnail_picture, :string
    add_column :ingredients, :background_picture, :string
  end
end
