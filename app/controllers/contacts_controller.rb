class ContactsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver_now
      redirect_to thanks_contacts_path
    else
      render :new
    end
  end

  def thanks
  end

  private
  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :phone_number, :adress, :zipcode, :content)
  end

end
