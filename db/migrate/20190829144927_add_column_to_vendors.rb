class AddColumnToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :link, :string
  end
end
