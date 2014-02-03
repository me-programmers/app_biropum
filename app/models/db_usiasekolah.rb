class DbUsiasekolah < ActiveRecord::Base
  attr_accessible :desa_kel, :kd_kab, :kd_kec, :kd_kel, :nama_kab, :nama_kec, :perguruan_tinggi, :pra_sekolah, :sd_sederajat, :slta_sederajat, :sltp_sederajat

  def self.searchkec(a)
  	if a.present?
  		where('nama_kab LIKE ?', "%#{a}%")
  	else
  		scoped
  	end
  end

  def self.searchkeckel(a, b)
  	if a.present? && b.present?
  		where('nama_kec LIKE ? and desa_kel LIKE ?', "%#{a}%", "%#{b}%")
  	else
  		scoped
  	end
  end
  
end
