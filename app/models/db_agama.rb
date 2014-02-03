class DbAgama < ActiveRecord::Base
  attr_accessible :desa_kel, :kd_kec, :kd_kel, :kdkab, :nama_kab, :nama_kec, :laki, :perempuan, :islam, :kristen, :katolik, :hindu, :budha, :konghucu, :kepercayaan, :jumlah_penduduk 
  
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
