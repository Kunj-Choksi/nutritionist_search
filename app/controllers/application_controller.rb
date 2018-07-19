class ApplicationController < ActionController::Base
    def render_result_json object
        response = {status: 'success', contents: object}
        render json: response
    end

    def render_success_json object
        response = get_success_json(object)
        render json: response
    end

    def get_success_json(object)
        response = {status: 'success', message: object}
    end

    def render_error_json message
        response = {status: 'error', message: message}
        render json: response
    end

    def render_error_json_with_code error_code, message
        response = {status: 'error', error_code: error_code, message: message}
        render json: response
    end

    def get_response_as_json(controller, action)
        JSON.parse(render_to_string("#{controller}/#{action}.json.jbuilder"))
    end
end
