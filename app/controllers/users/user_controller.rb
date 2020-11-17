class Users::UserController < ApplicationController

  def show
  	@user = User.find(params[:id])
	  @nails = Nail.where(user_id: @user.id)
  end

  def edit
  	@nail = Nail.find(params[:id])
  end

  private
	def nail_params
		params.require(:nail).permit(:name, :image, :brand, :introduction, :price, :user_id)
	end

	def user_params
  	params.require(:user).permit(:last_name, :first_name,:last_name_kana, :first_name_kana, :address, :telephone_number, :email)
  	end
end
