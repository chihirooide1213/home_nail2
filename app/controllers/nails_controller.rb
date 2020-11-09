class NailsController < ApplicationController
	before_action :authenticate_user!

  def new
	@nail = Nail.new
  end

  def create
  	@nail = Nail.new(nail_params)
  	@nail.save
  	redirect_to nails_path
  end

  def index
  	@nails = Nail.all
  end

  def show
  end

  def edit
  end

  private
	def nail_params
      params.require(:nail).permit(:relationship_id, :user_id, :name, :image, :brand, :introduction, :price)
	end

end
