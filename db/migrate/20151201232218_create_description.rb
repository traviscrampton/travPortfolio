class CreateDescription < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.column :content, :string
      t.column :blog_id, :integer
    end
  end
end
