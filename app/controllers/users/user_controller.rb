class Users::UserController < ApplicationController
  def show
  	@user = current_user
	@nails = @user.nails.all
  end

  def edit
  end

  private
	def nail_params
		pramams.require(:nail).permit(:name, :image, :brand, :introduction, :price)
	end

	def user_params
  		params.require(:user).permit(:last_name, :first_name,:last_name_kana, :first_name_kana, :address, :telephone_number, :email)
  	end
end
