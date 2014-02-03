# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :db_statuskawin do
    kd_kab "MyString"
    nama_kab "MyString"
    kd_kec "MyString"
    nama_kec "MyString"
    kd_kel "MyString"
    desa_kel "MyString"
    laki 1
    perempuan 1
    belum_kawin 1
    kawin 1
    cerai_hidup 1
    cerai_mati 1
    jumlah_penduduk 1
  end
end
