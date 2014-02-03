class Post < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :title, use: :slugged
  attr_accessible :content, :dokumen, :image_url, :position, :title, :typepost
  mount_uploader :dokumen, DokumenUploader
  

end
