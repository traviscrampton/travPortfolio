class RenameColumn < ActiveRecord::Migration
  def change
    drop_table :photos
    create_table :pics do |t|
      t.attachment :photo
      t.column :blog_id, :integer
      t.timestamps
    end
  end
end
