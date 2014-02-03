class DbPendidikan < ActiveRecord::Base
  attr_accessible :belum_sekolah, :desa_kel, :dip_ii, :dip_iii, :jumlah_penduduk, :kd_kab, :kd_kec, :kd_kel, :laki, :nama_kab, :nama_kec, :perempuan, :slta, :sltp, :strata_i, :strata_ii, :strata_iii, :tamat_sd, :tidak_tamat_sd

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
