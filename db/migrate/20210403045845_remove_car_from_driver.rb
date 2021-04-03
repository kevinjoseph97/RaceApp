class RemoveCarFromDriver < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :car, :string
    remove_column :drivers, :racemaster, :boolean
  end


end


