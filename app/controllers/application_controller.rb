class ApplicationController < ActionController::Base
	protect_from_forgery
	force_ssl

	before_filter :require_auth

	private

	def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def require_auth
		redirect_to login_path, notice: "Not authorized" unless current_user
	end
end
