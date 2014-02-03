class DbUmur < ActiveRecord::Base
  attr_accessible :i04thn, :i1014thn, :i1519thn, :i2024thn, :i2529thn, :i3034thn, :i3539thn, :i4044thn, :i4549thn, :i59thn, :i5054thn, :i5559thn, :i6064thn, :i6569thn, :i7074thn, :i74thn, :desa_kel, :kd_kab, :kd_kec, :kd_kel, :nama_kab, :nama_kec

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
