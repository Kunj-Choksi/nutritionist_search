class NutritionistSearchApi::NutritionistProfileController < NutritionistSearchApi::AbstractApiController

    def retrieve_nutritionist_profile
        
        unless has_sufficient_params(['id'])
            return
        end
        
        @nutritionist = Nutritionist::Profile.where("id = ?", params[:id]).first

        render_result_json(get_response_as_json(params["controller"], params["action"]))
    end
end
