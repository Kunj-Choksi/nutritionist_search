class NutritionistSearchApi::MastersController < NutritionistSearchApi::AbstractApiController

    def retrieve_cities
        p "sadfas"
        cities = Master::City.all
        if params[:q].present?
            cities = cities.where("lower(name) LIKE = ?", "%#{params[:q].downcase}%")
        end

        render_result_json cities
    end

end
