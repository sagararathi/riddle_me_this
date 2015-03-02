class UsersController < ApplicationController

	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		user = User.find_by_id(params[:id])
		update_params = rip_empty(user_params)
		user.update_attributes(update_params)
		redirect_to user_path(user)
	end

	def destroy
		user = User.find_by_id(params[:id]).destroy
		session.clear
		redirect_to root_path
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end

	def rip_empty(hash)
		hash.delete_if do |key, value|
  		value == ""
  	end
	end

end