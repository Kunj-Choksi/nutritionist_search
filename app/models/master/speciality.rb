class Master::Speciality < ApplicationRecord
    scope :sorted, lambda{ order("master_specialities.id ASC") }
end
