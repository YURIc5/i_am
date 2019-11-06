class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end

    def set_search
      @q = Animal.ransack(params[:q])
      @search_animals = @q.result(distinct: true)
      @search_types = Type.all
    end
end
