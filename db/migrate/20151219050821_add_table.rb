class AddTable < ActiveRecord::Migration
  def change
    drop_table :descriptions
    create_table :posts do |t|
      t.column :content, :text
      t.column :blog_id, :integer
      t.timestamps
    end

    create_table :photos do |t|
      t.attachment :pics
      t.column :blog_id, :integer
      t.timestamps
    end

    create_table :descripts do |t|
      t.column :subtext, :text
      t.column :photo_id, :integer
      t.timestamps
    end
  end
end
