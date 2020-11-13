class UserController < ApplicationController
	def index
	end

	def show
		@user = current_user
		@nails = @user.nails.all
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
