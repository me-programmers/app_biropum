class DbPekerjaan < ActiveRecord::Base
  attr_accessible :belum_tidak_bekerja, :desa_kel, :kd_kab, :kd_kec, :kd_kel, :laki, :mengurus_rumah_tangga, :nama_kab, :nama_kec, :pegawai_negeri_sipil, :pelajar_mahasiswa, :pensiunan, :perempuan, :tentara_nasional_indonesia, 	 :kepolisian_ri, :perdagangan, :petani_pekebun, :peternak, :nelayan_perikanan, :industri, :konstruksi, :transportasi, :karyawan_swasta, :karyawan_bumn, :karyawan_bumd, :karyawan_honorer, :buruh_harian_lepas, :buruh_tani_perkebunan, :buruh_nelayan_perikanan, :buruh_peternakan, :pembantu_rumah_tangga, :tukang_cukur, :tukang_lisrik, :tukang_batu, :tukang_kayu, :tukang_sol_sepatu, :tukang_las_pandai_besi, :tukang_jahit, :tukang_gigi, :penata_rias, :penata_busana, :penata_rambut, :mekanik, :seniman, :tabib, :paraji, :perancang_busana, :penterjemah, :imam_mesjid, :pendeta, :pastor, :wartawan, :ustadz_mubaligh, :juru_masak, :promotor_acara, :anggota_dpr_ri, :anggota_dpd, :anggota_bpk, :presiden, :wakil_presiden, :anggota_mahkamah_konstitusi, :anggota_kabinet_kementrian, :duta_besar, :gubernur, :wakil_gubernur, :bupati, :wakil_bupati, :walikota, :wakil_walikota, :anggota_dprd_provinsi, :anggota_dprd_kabupaten_kota, :dosen, :guru, :pilot, :pengacara, :notaris, :arsitek, :akuntan, :konsultan, :dokter, :bidan, :perawat, :apoteker, :psikiater_psikolog, :penyiar_televisi, :penyiar_radio, :pelaut, :peneliti, :sopir, :pialang, :paranormal, :pedagang, :perangkat_desa, :kepala_desa, :biarawati, :wiraswasta, :lainnya, :jumlah_penduduk

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
