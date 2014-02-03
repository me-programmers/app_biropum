# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :db_pekerjaan do
    kd_kab "MyString"
    nama_kab "MyString"
    kd_kec "MyString"
    nama_kec "MyString"
    kd_kel "MyString"
    desa_kel "MyString"
    laki 1
    perempuan 1
    belum_tidak_bekerja 1
    mengurus_rumah_tangga 1
    pelajar_mahasiswa 1
    pensiunan 1
    pegawai_negeri_sipil 1
    tentara_nasional_indonesia 1
  end
end
