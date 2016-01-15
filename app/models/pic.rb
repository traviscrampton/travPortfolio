class Pic < ActiveRecord::Base

  has_attached_file :photo, :styles => { :standard => "800x533", :small => "450x300"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  has_one :descript, dependent: :destroy
  accepts_nested_attributes_for :descript
  belongs_to :blog

end
