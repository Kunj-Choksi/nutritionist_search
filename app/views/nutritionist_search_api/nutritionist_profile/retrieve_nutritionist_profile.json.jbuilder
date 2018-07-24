n = @nutritionist
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
json.about n.about
json.avatar n.avatar
json.specialities do |json|
    json.array!(n.specialities) do |s|
        json.id s.id
        json.speciality_id s.parent.id
        json.name s.parent.name
    end
end


