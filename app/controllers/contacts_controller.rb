class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to new_contact_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
