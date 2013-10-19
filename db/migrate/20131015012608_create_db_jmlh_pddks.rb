class CreateDbJmlhPddks < ActiveRecord::Migration
  def change
    create_table :db_jmlh_pddks do |t|
      t.string :kdkec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :dak_lk
      t.integer :dak_pr
      t.integer :dak

      t.timestamps
    end
  end
end
