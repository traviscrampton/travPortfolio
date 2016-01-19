class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      respond_to do |format|
        format.html {redirect_to root}
        format.js
      end
    else
      render :new
    end
  end







private

def contact_params
  params.require(:contact).permit(:name, :message, :email)
end

end
