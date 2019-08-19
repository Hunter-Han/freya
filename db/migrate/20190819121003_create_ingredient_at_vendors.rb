class CreateIngredientAtVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_at_vendors do |t|
      t.references :vendor, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
