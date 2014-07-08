class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :posts
      t.decimal :duration
      t.references :user, index: true

      t.timestamps
    end
  end
end
