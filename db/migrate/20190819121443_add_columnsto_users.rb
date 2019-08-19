class AddColumnstoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :diet, :string
    add_column :users, :picture, :string
    add_column :users, :username, :string

    add_column :users, :longitude, :float
    add_column :users, :latitude, :float

    add_reference :users, :county
  end
end
