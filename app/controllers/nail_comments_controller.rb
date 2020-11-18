class NailCommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_nail, only: [:show, :edit, :update, :destroy]

  def create
    @nail_comment = NailComment.new(nail_comment_params)
    @nail = Nail.find(params[:nail_id])
    @nail_comment.user_id = current_user.id
    @nail_comment.save!
    redirect_to nail_nail_comments_path
  end


  def new
    @nail_comment = NailComment.new(nail_id: params[:id])
    @nail = Nail.find(params[:nail_id])
    @nail_comment.user_id = current_user.id
    @nail_comment.nail_id = @nail.id
  end

  def index
  	@nail_comments = NailComment.order(created_at:"DESC")
    @nail = Nail.find(params[:nail_id])
  end

  def show
    @nail_comment = NailComment.find(params[:id])
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
