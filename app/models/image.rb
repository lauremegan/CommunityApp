class Image < ActiveRecord::Base
  attr_accessible :image, :title
  mount_uploader :upload, UploadUploader
  
  belongs_to :user
end
