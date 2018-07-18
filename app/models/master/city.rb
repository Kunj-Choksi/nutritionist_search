class Master::City < ApplicationRecord

    has_many :nutritionists, class_name: 'Nutritionist::Profile', foreign_key: 'city_id'

    scope :sorted, lambda{ order("master_cities.id ASC") }
end
