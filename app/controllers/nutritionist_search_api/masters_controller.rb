class NutritionistSearchApi::MastersController < NutritionistSearchApi::AbstractApiController

    def retrieve_cities
        
        cities = Master::City.all
        if params[:q].present?
            cities = cities.where("lower(name) LIKE = ?", "%#{params[:q].downcase}%")
        end

        render_result_json cities
    end

    def retrieve_specialities
        
        specialities = Master::Speciality.all
        if params[:q].present?
            specialities = specialities.where("lower(name) LIKE = ?", "%#{params[:q].downcase}%")
        end

        render_result_json specialities
    end

end
