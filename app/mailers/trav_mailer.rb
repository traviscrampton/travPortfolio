class TravMailer < ApplicationMailer



  def contact contact
    @contact = contact

    mail to: "crampton.travis@gmail.com"
  end
end
