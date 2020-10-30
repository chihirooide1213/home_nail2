class NailsController < ApplicationController
	before_action :authenticate_user!
	
  def index
  	@nails = Nail.all
  end

  def show
  end

  def edit
  end
end
