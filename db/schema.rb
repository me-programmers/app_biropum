# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140203031740) do

  create_table "db_agamas", :force => true do |t|
    t.string   "kdkab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "laki"
    t.integer  "perempuan"
    t.integer  "islam"
    t.integer  "kristen"
    t.integer  "katolik"
    t.integer  "hindu"
    t.integer  "budha"
    t.integer  "konghucu"
    t.integer  "kepercayaan"
    t.integer  "jumlah_penduduk"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "db_jmlh_pddks", :force => true do |t|
    t.string   "kdkec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "dak_lk"
    t.integer  "dak_pr"
    t.integer  "dak"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "kdkab"
    t.string   "nama_kab"
  end

  create_table "db_pekerjaans", :force => true do |t|
    t.string   "kd_kab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "laki"
    t.integer  "perempuan"
    t.integer  "belum_tidak_bekerja"
    t.integer  "mengurus_rumah_tangga"
    t.integer  "pelajar_mahasiswa"
    t.integer  "pensiunan"
    t.integer  "pegawai_negeri_sipil"
    t.integer  "tentara_nasional_indonesia"
    t.integer  "kepolisian_ri"
    t.integer  "perdagangan"
    t.integer  "petani_pekebun"
    t.integer  "peternak"
    t.integer  "nelayan_perikanan"
    t.integer  "industri"
    t.integer  "konstruksi"
    t.integer  "transportasi"
    t.integer  "karyawan_swasta"
    t.integer  "karyawan_bumn"
    t.integer  "karyawan_bumd"
    t.integer  "karyawan_honorer"
    t.integer  "buruh_harian_lepas"
    t.integer  "buruh_tani_perkebunan"
    t.integer  "buruh_nelayan_perikanan"
    t.integer  "buruh_peternakan"
    t.integer  "pembantu_rumah_tangga"
    t.integer  "tukang_cukur"
    t.integer  "tukang_lisrik"
    t.integer  "tukang_batu"
    t.integer  "tukang_kayu"
    t.integer  "tukang_sol_sepatu"
    t.integer  "tukang_las_pandai_besi"
    t.integer  "tukang_jahit"
    t.integer  "tukang_gigi"
    t.integer  "penata_rias"
    t.integer  "penata_busana"
    t.integer  "penata_rambut"
    t.integer  "mekanik"
    t.integer  "seniman"
    t.integer  "tabib"
    t.integer  "paraji"
    t.integer  "perancang_busana"
    t.integer  "penterjemah"
    t.integer  "imam_mesjid"
    t.integer  "pendeta"
    t.integer  "pastor"
    t.integer  "wartawan"
    t.integer  "ustadz_mubaligh"
    t.integer  "juru_masak"
    t.integer  "promotor_acara"
    t.integer  "anggota_dpr_ri"
    t.integer  "anggota_dpd"
    t.integer  "anggota_bpk"
    t.integer  "presiden"
    t.integer  "wakil_presiden"
    t.integer  "anggota_mahkamah_konstitusi"
    t.integer  "anggota_kabinet_kementrian"
    t.integer  "duta_besar"
    t.integer  "gubernur"
    t.integer  "wakil_gubernur"
    t.integer  "bupati"
    t.integer  "wakil_bupati"
    t.integer  "walikota"
    t.integer  "wakil_walikota"
    t.integer  "anggota_dprd_provinsi"
    t.integer  "anggota_dprd_kabupaten_kota"
    t.integer  "dosen"
    t.integer  "guru"
    t.integer  "pilot"
    t.integer  "pengacara"
    t.integer  "notaris"
    t.integer  "arsitek"
    t.integer  "akuntan"
    t.integer  "konsultan"
    t.integer  "dokter"
    t.integer  "bidan"
    t.integer  "perawat"
    t.integer  "apoteker"
    t.integer  "psikiater_psikolog"
    t.integer  "penyiar_televisi"
    t.integer  "penyiar_radio"
    t.integer  "pelaut"
    t.integer  "peneliti"
    t.integer  "sopir"
    t.integer  "pialang"
    t.integer  "paranormal"
    t.integer  "pedagang"
    t.integer  "perangkat_desa"
    t.integer  "kepala_desa"
    t.integer  "biarawati"
    t.integer  "wiraswasta"
    t.integer  "lainnya"
    t.integer  "jumlah_penduduk"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "db_pendidikans", :force => true do |t|
    t.string   "kd_kab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "laki"
    t.integer  "perempuan"
    t.integer  "belum_sekolah"
    t.integer  "tidak_tamat_sd"
    t.integer  "tamat_sd"
    t.integer  "sltp"
    t.integer  "slta"
    t.integer  "dip_ii"
    t.integer  "dip_iii"
    t.integer  "strata_i"
    t.integer  "strata_ii"
    t.integer  "strata_iii"
    t.integer  "jumlah_penduduk"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "db_statuskawins", :force => true do |t|
    t.string   "kd_kab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "laki"
    t.integer  "perempuan"
    t.integer  "belum_kawin"
    t.integer  "kawin"
    t.integer  "cerai_hidup"
    t.integer  "cerai_mati"
    t.integer  "jumlah_penduduk"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "db_umurs", :force => true do |t|
    t.string   "kd_kab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "i04thn"
    t.integer  "i59thn"
    t.integer  "i1014thn"
    t.integer  "i1519thn"
    t.integer  "i2024thn"
    t.integer  "i2529thn"
    t.integer  "i3034thn"
    t.integer  "i3539thn"
    t.integer  "i4044thn"
    t.integer  "i4549thn"
    t.integer  "i5054thn"
    t.integer  "i5559thn"
    t.integer  "i6064thn"
    t.integer  "i6569thn"
    t.integer  "i7074thn"
    t.integer  "i74thn"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "db_usiasekolahs", :force => true do |t|
    t.string   "kd_kab"
    t.string   "nama_kab"
    t.string   "kd_kec"
    t.string   "nama_kec"
    t.string   "kd_kel"
    t.string   "desa_kel"
    t.integer  "pra_sekolah"
    t.integer  "sd_sederajat"
    t.integer  "sltp_sederajat"
    t.integer  "slta_sederajat"
    t.integer  "perguruan_tinggi"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "foto_galeris", :force => true do |t|
    t.string   "judul"
    t.string   "keterangan"
    t.string   "foto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "importtodbs", :force => true do |t|
    t.string   "fileupload"
    t.string   "tag"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "paintings", :force => true do |t|
    t.integer  "gallery_id"
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "position"
    t.string   "typepost"
    t.string   "image_url"
    t.text     "content"
    t.string   "dokumen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "posts", ["slug"], :name => "index_posts_on_slug", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
