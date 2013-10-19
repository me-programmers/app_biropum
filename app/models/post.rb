class Post < ActiveRecord::Base
  attr_accessible :content, :dokumen, :image_url, :position, :title, :typepost
  mount_uploader :dokumen, DokumenUploader

end
