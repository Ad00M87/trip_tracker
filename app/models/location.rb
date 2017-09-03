class Location < ApplicationRecord
  has_one :address, dependent: :destroy
  belongs_to :trip, :class_name => Trip, :foreign_key => 'trip_id'
end
