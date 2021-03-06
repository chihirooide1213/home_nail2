class NailsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_nail, only: [:show, :edit, :update, :destroy]

  def new
	@nail = Nail.new
  end

  def create
  	@nail = Nail.new(nail_params)
  	@nail.save!
  	redirect_to nails_path
  end

  def index
  	@nails = Nail.all.order(created_at: :desc).page(params[:page]).per(18)
  end

  def show
  end

  def edit
  end

  def update
    @nail.update(nail_params)
    redirect_to nail_path(@nail)
  end

  private
	def nail_params
      params.require(:nail).permit(:relationship_id, :name, :image, :brand, :introduction, :price, :user_id).merge(user_id: current_user.try(:id))
	end

	def set_nail
		@nail = Nail.find(params[:id])
	end

end
