class HomeController < ApplicationController
  def index
  	#Displaying all videos on home page either user logged in or not
  	@videos = Video.all
  end
end
