class CreateDbUmurs < ActiveRecord::Migration
  def change
    create_table :db_umurs do |t|
      t.string :kd_kab
      t.string :nama_kab
      t.string :kd_kec
      t.string :nama_kec
      t.string :kd_kel
      t.string :desa_kel
      t.integer :i04thn
      t.integer :i59thn
      t.integer :i1014thn
      t.integer :i1519thn
      t.integer :i2024thn
      t.integer :i2529thn
      t.integer :i3034thn
      t.integer :i3539thn
      t.integer :i4044thn
      t.integer :i4549thn
      t.integer :i5054thn
      t.integer :i5559thn
      t.integer :i6064thn
      t.integer :i6569thn
      t.integer :i7074thn
      t.integer :i74thn

      t.timestamps
    end
  end
end
