class CreateIngredientSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_seasons do |t|
      t.date :start
      t.date :end
      t.references :ingredient, foreign_key: true
      t.references :county, foreign_key: true

      t.timestamps
    end
  end
end
