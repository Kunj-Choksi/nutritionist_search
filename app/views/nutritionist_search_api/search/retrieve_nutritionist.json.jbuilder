json.nutritionists do |json|
    json.array!(@nutritionists) do |n|
        json.name n.name
    end
end

