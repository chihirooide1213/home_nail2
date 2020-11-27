class NailCommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_nail, only: [:show, :edit, :update, :destroy, :update]
  before_action :set_nailcomment, only: [:edit,:update, :show]

  def create
    @nail_comment = NailComment.new(nail_comment_params)
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
  end

  def edit
  end

  def destroy
  end

  def update
    @nail_comment.update(nail_comment_params)
    redirect_to nail_nail_comments_path
  end

  private
  def nail_comment_params
  	params.permit(:nail_id, :rate, :content, :title).merge(user_id: current_user.try(:id))
  end

  def set_nail
  	@nail = Nail.find(params[:id])
  end

  def set_nailcomment
    @nail_comment =NailComment.find(params[:nail_id])
  end
end
