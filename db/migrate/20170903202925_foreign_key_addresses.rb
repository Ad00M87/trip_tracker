class ForeignKeyAddresses < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :addresses, :locations
  end
end
