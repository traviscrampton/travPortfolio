class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.attachment :photo
      t.column :blog_id, :integer
    end
  end
end
