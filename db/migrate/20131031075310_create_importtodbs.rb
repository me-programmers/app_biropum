class CreateImporttodbs < ActiveRecord::Migration
  def change
    create_table :importtodbs do |t|
      t.string :fileupload
      t.string :tag
      t.string :status

      t.timestamps
    end
  end
end
