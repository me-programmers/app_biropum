class DbStatuskawin < ActiveRecord::Base
  attr_accessible :belum_kawin, :cerai_hidup, :cerai_mati, :desa_kel, :jumlah_penduduk, :kawin, :kd_kab, :kd_kec, :kd_kel, :laki, :nama_kab, :nama_kec, :perempuan

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
