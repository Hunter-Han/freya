class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :food_group, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
