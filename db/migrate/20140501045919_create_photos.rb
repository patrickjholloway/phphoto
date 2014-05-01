class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :gallery_id
      t.timestamps
    end
    add_index :photos, :gallery_id
  end
end
