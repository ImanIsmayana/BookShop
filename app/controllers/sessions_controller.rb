class SessionsController < ApplicationController
	skip_before_action :authorize

	def new
		user = User.find_by(name: params[:name])
		if user.try(:authenticate, params[:password])
			session[:user_id] = user.id
			redirect_to admin_url
		end
	end

	def create
		redirect_to new_user_url
	end

	def destroy
		session[:user_id] = nil
		redirect_to store_index_url, notice: "Logged out"
	end
end
