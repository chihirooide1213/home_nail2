class NailCommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_nail, only: [:show, :edit, :update, :destroy]

  def create
    @nail_comment = NailComment.new(nail_comment_params)
  end


  def new
    @nail_comment = NailComment.new
  end

  def index
  	@nail_comments = NailComment.all
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def nail_comment_params
  	params.permit(:user_id, :nail_id, :rate, :content, :title)
  end

  def set_nail
  	@nail = Nail.find(params[:id])
  end
end
