class Address < ApplicationRecord
  belongs_to :location, dependent: :destroy, class_name: Location, :foreign_key => 'location_id'
end
