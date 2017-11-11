class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  $mostTags = Tag.order(:occurence).limit(10)
  protected 
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name,:last_name,:date_of_birth ,:profile_picture,:role,:firebase_id])
  end 	
end