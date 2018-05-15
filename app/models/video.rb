class Video < ApplicationRecord
	belongs_to :user
	is_impressionable

  has_attached_file :video, :styles => { :preview => { :geometry => '300x300>', :format => 'jpg', :time => 5 }},
  processors: [:transcoder]
  validates_attachment_content_type :video, content_type: ["video/webm",'video/mp4','video/x-flv','application/x-mpegURL','video/MP2T','video/x-msvideo','video/x-ms-wmv','video/quicktime'],:message => "Different Media"

  validates :title, presence: true
end


