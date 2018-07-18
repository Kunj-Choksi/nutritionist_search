class Master::City < ApplicationRecord
    scope :sorted, lambda{ order("master_cities.id ASC") }
end
