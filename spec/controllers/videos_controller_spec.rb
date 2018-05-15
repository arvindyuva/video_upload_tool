require 'rails_helper'

RSpec.describe VideosController, type: :controller do
	before do
		current_user
	end
	context "POST#cretae" do
		it "can be create the videos with valid params" do
			post :create, params: {video: { title: "Demo title", description: "Demo Description", user: @current_user.id }}
			
			# check video
			expect(Video.last.title).to eq("Demo title")
			# success redirect path
			expect(response).to redirect_to(root_url)
		end

		it "can be create with invalid params" do
			post :create, params: {video: {description: "Demo description", user: @current_user.id}}

			# check vide
			expect(Video.last).to eq(nil)
			# failure redirect path
			expect(response).to redirect_to(new_video_url)
		end
	end

	describe "GET #show" do
    it "can be show the particular video" do
    	video = create(:video, user_id: @current_user.id)
    	# params
      get :show, params: { id: video.id }, xhr: true
      # result
      expect(assigns(:video).present?).to eq(true)
      expect(response).to be_success
    end
  end
end
