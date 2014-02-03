class CreateDbPendidikans < ActiveRecord::Migration
  def change
    create_table :db_pendidikans do |t|
      t.string :kd_kab
      t.string :nama_kab
      t.string :kd_kec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :laki
      t.integer :perempuan
      t.integer :belum_sekolah
      t.integer :tidak_tamat_sd
      t.integer :tamat_sd
      t.integer :sltp
      t.integer :slta
      t.integer :dip_ii
      t.integer :dip_iii
      t.integer :strata_i
      t.integer :strata_ii
      t.integer :strata_iii
      t.integer :jumlah_penduduk

      t.timestamps
    end
  end
end
