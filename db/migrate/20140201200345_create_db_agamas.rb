class CreateDbAgamas < ActiveRecord::Migration
  def change
    create_table :db_agamas do |t|
      t.string :kdkab
      t.string :nama_kab
      t.string :kd_kec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :laki
      t.integer :perempuan
      t.integer :islam
      t.integer :kristen
      t.integer :katolik
      t.integer :hindu
      t.integer :budha
      t.integer :konghucu
      t.integer :kepercayaan
      t.integer :jumlah_penduduk

      t.timestamps
    end
  end
end
