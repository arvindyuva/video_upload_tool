class VideosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	before_action :set_video, only: [:show]
	impressionist actions: [:show]

	def new
		@video = Video.new
	end

	def create
		#Video create logic with current user by which in future it will be easy to track user which one uploaded the video.
		@video = current_user.videos.new(video_params)
		if @video.save
			redirect_to root_path
		else
			redirect_to new_video_path
		end
	end

	def show; end

	private

	def video_params
		#Permiting parameters 
		params.require(:video).permit(:title, :description, :video)
	end

	def set_video
		#This method will called before :edit, :show, :update, :destroy and will return vedio on the basis of id param
		@video = Video.find(params[:id])
	end

end
