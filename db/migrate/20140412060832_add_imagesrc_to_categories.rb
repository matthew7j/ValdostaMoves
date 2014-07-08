class AddImagesrcToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :imagesrc, :string
  end
end
