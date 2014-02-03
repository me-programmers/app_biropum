class CreateDbStatuskawins < ActiveRecord::Migration
  def change
    create_table :db_statuskawins do |t|
      t.string :kd_kab
      t.string :nama_kab
      t.string :kd_kec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :laki
      t.integer :perempuan
      t.integer :belum_kawin
      t.integer :kawin
      t.integer :cerai_hidup
      t.integer :cerai_mati
      t.integer :jumlah_penduduk

      t.timestamps
    end
  end
end
