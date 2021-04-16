class ApplicationController < ActionController::Base
    protect_from_forgery
    include ApplicationHelper
    #before_action :configure_permitted_parameters, if: :devise_controller?
end
