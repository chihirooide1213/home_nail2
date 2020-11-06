class HomeController < ApplicationController

  def top
  	now = Time.current
  	monthly_ranking = NailComment.where(created_at: Time.now.all_month).group(:nail_id).order("avg(nail_comments.rate) desc").limit(3).pluck("nail_id,avg(nail_comments.rate)")
  	@monthly_ranking = monthly_ranking.map do |r|
  		{
  			nail:Nail.find(r[0]),
  			average:r[1]
  		}
  	end

  	weekly_ranking = NailComment.where(created_at: Time.now.all_week).group(:nail_id).order("avg(nail_comments.rate) desc").limit(3).pluck("nail_id,avg(nail_comments.rate)")
  	@weekly_ranking = weekly_ranking.map do |r|
  		{
  			nail:Nail.find(r[0]),
  			average:r[1]
  		}
  	end

  	daily_ranking = NailComment.where(created_at: Time.now.all_day).group(:nail_id).order("avg(nail_comments.rate) desc").limit(3).pluck("nail_id,avg(nail_comments.rate)")
  	@daily_ranking = daily_ranking.map do |r|
  		{
  			nail:Nail.find(r[0]),
  			average:r[1]
  		}
  	end

  	if params[:name].present?
      @search_nails = Nail.where('name Like ?', "%#{params[:name]}%")
    else
      @search_nails = Nail.none
    end

  end
end
