class CreateDbUsiasekolahs < ActiveRecord::Migration
  def change
    create_table :db_usiasekolahs do |t|
      t.string :kd_kab
      t.string :nama_kab
      t.string :kd_kec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :pra_sekolah
      t.integer :sd_sederajat
      t.integer :sltp_sederajat
      t.integer :slta_sederajat
      t.integer :perguruan_tinggi

      t.timestamps
    end
  end
end
