class RemoveRateFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :rate, :decimal
  end
end
