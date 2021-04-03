class RemoveDriverIdFromLaptime < ActiveRecord::Migration[6.1]
  def change
    remove_column :laptimes, :driver_id, :string
  end
end
