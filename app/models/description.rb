class Description < ActiveRecord::Base

  has_attached_file :pic, :styles => { :standard => "800x533", :small => "450x300"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
  belongs_to :blog


end
