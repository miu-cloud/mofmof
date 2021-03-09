class Property < ApplicationRecord
    has_many :nearest_stations, dependent: :destroy, inverse_of: :property
    accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
    
    validates :property_name, presence: true
    validates :rent, presence: true
    validates :address, presence: true
    validates :age, presence: true
end
