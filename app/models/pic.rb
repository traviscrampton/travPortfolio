class Pic < ActiveRecord::Base

  has_attached_file :photo, :styles => { :standard => "1000x533", :small => "450x300"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  belongs_to :blog

end
