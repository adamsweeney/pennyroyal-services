class UsersController < ApplicationController

	def create
		@user = User.create(user_params)
		@user.save
		respond_with @user
	end

	def show
		respond_with User.find(params[:id])
	end

	def index

	end

	private

	def user_params
      params.permit(:first_name, :last_name, :username)
  end

end
