class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :city, null: false
      t.string :state
      t.string :country
      t.bigint :trip_id, null: false

      t.timestamps
    end
  end
end
