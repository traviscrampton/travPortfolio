class Blog < ActiveRecord::Base

  validates :title, :presence => true
  validates :date, :presence => true
  validates :distance, :presence => true
  validates :time, :presence => true

  has_attached_file :mapimage, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :mapimage, :content_type => /\Aimage\/.*\Z/


end
