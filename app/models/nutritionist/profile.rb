class Nutritionist::Profile < ApplicationRecord
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    belongs_to :city, class_name: 'Master::City', foreign_key: 'city_id'
    has_many :specialities, class_name: 'Nutritionist::NutritionistSpecialityRel', foreign_key: 'nutritionist_id'

    scope :sorted, lambda{ order("nutritionist_profiles.id ASC") }
    
end
    