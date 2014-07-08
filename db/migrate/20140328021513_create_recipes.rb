class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.text :instructions

      t.timestamps
    end
    add_index :recipes, :user_id 
  end
end
