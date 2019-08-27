class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :hours_preparation
      t.text :description
      t.text :instructions
      t.text :shopping_list
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
