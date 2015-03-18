class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) do |u| 
  		u.permit(
  		 	:name,
  		 	:email, :password, :confirmation_password, 
	  		listings_attributes: [
	  			:title, :time, :date, :seats,
				:venue_name, :location, :other_info,
				:price, :projector, :cables,
				:laptops, :seating, :blinds,
				:lighting, :camcorder, :catering,
				:toilets, :fire, :internet
	  		]
	  	)
	  end 
  	devise_parameter_sanitizer.for(:account_update) << :name
  end
end
