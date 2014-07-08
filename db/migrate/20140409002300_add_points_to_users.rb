class AddPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :points, :decimal
    add_column :users, :event_points, :decimal
    add_column :users, :rep, :decimal
  end
end
