class ApplicationController < ActionController::Base
	if params[:name].present?
      @search_items = Nail.where('name Like ?', "%#{params[:name]}%")
    else
      @search_items = Nail.none
    end
end
