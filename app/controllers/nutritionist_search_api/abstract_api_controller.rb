class NutritionistSearchApi::AbstractApiController < ApplicationController

    layout false
    skip_before_action :verify_authenticity_token

    def has_sufficient_params(params_list)
        params_list.each do |param|
            unless params[param].present?
                render_error_json "#{param.gsub('_',' ')} is mandatory".camelize
                return false
            end
        end
        return true
    end

end
