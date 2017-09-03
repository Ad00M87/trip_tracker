class AddLocationIdToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :location_id, :bigint
  end
end
