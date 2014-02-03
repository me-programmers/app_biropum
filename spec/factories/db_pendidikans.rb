# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :db_pendidikan do
    kd_kab "MyString"
    nama_kab "MyString"
    kd_kec "MyString"
    nama_kec "MyString"
    kd_kel "MyString"
    desa_kel "MyString"
    laki 1
    perempuan 1
    belum_sekolah 1
    tidak_tamat_sd 1
    tamat_sd 1
    sltp 1
    slta 1
    dip_ii 1
    dip_iii 1
    strata_i 1
    strata_ii 1
    strata_iii 1
    jumlah_penduduk 1
  end
end
