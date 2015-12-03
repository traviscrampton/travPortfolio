class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.column :content, :string
      t.column :blog_id, :integer
      t.attachment :pic
    end
  end
end
