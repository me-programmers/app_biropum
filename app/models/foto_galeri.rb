class FotoGaleri < ActiveRecord::Base
  attr_accessible :foto, :judul, :keterangan
  mount_uploader :foto, FotoUploader
end
