class NailCommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @nail_comment = NaiLComment.new
  end


  def new
    @nail_comment = NaiLComment.new(nail_comment_params)
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
  	params.require(:nail_comment).permit(:user_id, :nail_id, :rate, :content, :title)
  end

  def set_comment
  	@nail = Nail.find(params[:id])
  end
end
