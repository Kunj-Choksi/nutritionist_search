class NutritionistSearchApi::SearchController < NutritionistSearchApi::AbstractApiController

    def retrieve_nutritionist
        nutritionists = Nutritionist::Profile.all
        if params[:city_id].present?
            nutritionists = nutritionists.where(city_id: params[:city_id])
        end

        if params[:speciality_id].present?
            rel = Nutritionist::NutritionistSpecialityRel.where(speciality_id: params[:speciality_id])
            nutritionists = nutritionists.where(id: rel.pluck(:nutritionist_id)) 
        end

        if params[:q].present?
            nutritionists = nutritionists.where("lower(name) LIKE ?", "%#{params[:q].downcase}%")
        end
        
        @nutritionists = nutritionists

        render_result_json(get_response_as_json(params["controller"], params["action"]))
    end

end
