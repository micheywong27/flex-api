class AddNutritionSwitchToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :nutrition, :boolean
  end
end
