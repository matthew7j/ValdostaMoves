class AddImagesrcToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :imagesrc, :string
  end
end
