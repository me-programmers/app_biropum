class CreateFotoGaleris < ActiveRecord::Migration
  def change
    create_table :foto_galeris do |t|
      t.string :judul
      t.string :keterangan
      t.string :foto

      t.timestamps
    end
  end
end
