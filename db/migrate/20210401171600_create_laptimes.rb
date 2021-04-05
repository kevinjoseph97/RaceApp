class CreateLaptimes < ActiveRecord::Migration[6.1]
  def change
    create_table :laptimes do |t|
      t.integer :driver_id
      t.integer :track_id
      t.string :time

      t.timestamps
    end
  end
end
