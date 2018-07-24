json.nutritionists do |json|
    json.array!(@nutritionists) do |n|
        json.id n.id
        json.name n.name
        json.mobile_no n.mobile_no
        json.email n.email
        json.counsultation_fees n.counsultation_fees
        json.experience n.experience
        json.work_history n.work_history
        json.dob n.dob
        json.awards n.awards
        json.city n.city
        json.specialities n.specialities
        json.avatar n.avatar
    end
end