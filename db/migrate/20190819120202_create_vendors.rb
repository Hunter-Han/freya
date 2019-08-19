class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :address
      t.string :name
      t.references :county, foreign_key: true
      t.text :description
      t.float :longitude
      t.float :latitude
      t.integer :price_range

      t.timestamps
    end
  end
end
