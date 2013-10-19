class AddKabToDbJmlhPddks < ActiveRecord::Migration
  def change
    add_column :db_jmlh_pddks, :kdkab, :string
    add_column :db_jmlh_pddks, :nama_kab, :string
  end
end
