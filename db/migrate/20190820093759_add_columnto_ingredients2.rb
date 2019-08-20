class AddColumntoIngredients2 < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :binomial, :string
  end
end
