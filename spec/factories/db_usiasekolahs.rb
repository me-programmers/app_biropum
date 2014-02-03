# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :db_usiasekolah do
    kd_kab "MyString"
    nama_kab "MyString"
    kd_kec "MyString"
    nama_kec "MyString"
    kd_kel "MyString"
    desa_kel "MyString"
    pra_sekolah 1
    sd_sederajat 1
    sltp_sederajat 1
    slta_sederajat 1
    perguruan_tinggi 1
  end
end
