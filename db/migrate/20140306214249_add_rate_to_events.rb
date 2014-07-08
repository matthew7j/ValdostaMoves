class AddRateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :rate, :decimal
  end
end
