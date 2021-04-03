class RemoveLocationFromTrack < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :location, :string
  end
end
