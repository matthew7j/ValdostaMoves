class AddCategoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :category, :integer, default: 0, null: false
  end
end
