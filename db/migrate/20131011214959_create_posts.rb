class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :position
      t.string :typepost
      t.string :image_url
      t.text :content
      t.string :dokumen

      t.timestamps
    end
  end
end
