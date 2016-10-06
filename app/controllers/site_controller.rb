class SiteController < ApplicationController
  
  def home
    @sports = Sport.all
	end

	def search
		sport_id = params['sport']
		sport = Sport.find_by(id: sport_id)
		if sport
			redirect_to sport_path(sport)
		else
			render plain: 'No sports found'
		end
	end
end
