class Blog < ActiveRecord::Base


  has_attached_file :mapimage, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :mapimage, :content_type => /\Aimage\/.*\Z/

  has_many :pics
  has_many :posts
  belongs_to :user

end
