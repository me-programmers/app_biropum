class Importtodb < ActiveRecord::Base
  attr_accessible :fileupload, :status, :tag
  mount_uploader :fileupload, FileuploadUploader
  
end
