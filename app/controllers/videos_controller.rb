class VideosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	before_action :find_video, only: [:edit, :show, :update, :destroy]
	impressionist :actions=>[:show]

	def new
		@video = Video.new
	end

	def create
		@video = current_user.videos.new(video_params)
		if @video.save
			redirect_to root_path
		else
			redirect_to root_path
		end
	end
	
	def index
	end
	
	def show
		#@video.increase_visit
	end
	
	def edit
	end
	
	def update
	end
	
	def destroy
	end

	private
	def video_params
		params.require(:video).permit(:title, :description, :video)
	end

	def find_video
		@video = Video.find(params[:id])
	end

end
