class Contact < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :message
  validates_presence_of :email

  after_create :send_trav_notification

  def send_trav_notification
    TravMailer.contact(self).deliver_now
  end
end
