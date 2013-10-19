class DbJmlhPddk < ActiveRecord::Base
  attr_accessible :dak, :dak_lk, :dak_pr, :desa_kel, :kd_kel, :kdkec, :nama_kec, :kdkab, :nama_kab

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
