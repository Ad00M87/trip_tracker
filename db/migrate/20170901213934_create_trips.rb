class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.string :duration
      t.belongs_to :user

      t.timestamps
    end
  end
end
