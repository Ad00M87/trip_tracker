class ForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :locations, :trips
    add_foreign_key :trips, :users
  end
end
