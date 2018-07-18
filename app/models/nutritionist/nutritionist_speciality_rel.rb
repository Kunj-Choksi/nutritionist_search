class Nutritionist::NutritionistSpecialityRel < ApplicationRecord

    belongs_to :parent, class_name: 'Master::Speciality', foreign_key: 'speciality_id'
    belongs_to :nutritionist, class_name: 'Nutritionist::Profile', foreign_key: 'nutritionist_id'

    def name
        if self.parent.present?
            return self.parent.name
        else
            return ''
        end
    end
end
