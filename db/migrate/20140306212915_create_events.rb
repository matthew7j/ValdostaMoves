class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :sponser
      t.string :type
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :contactphone
      t.string :description
      t.string :image_url
      t.boolean :allday
      t.integer :rating
      t.timestamps
    end
  end
end

