class AddDriverIdToLaptime < ActiveRecord::Migration[6.1]
  def change
    add_column :laptimes, :driver_id, :integer
  end
end
