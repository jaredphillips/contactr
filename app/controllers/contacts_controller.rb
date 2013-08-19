class ContactsController < ApplicationController

	before_filter :load_user

  def new
  	@contact = Contact.new()
  end

  def create
  	@contact = Contact.new(contacts_params)
  	if @contact.save
  		redirect_to user_contacts_path(@user)
  	else
  		render :new
  	end	
  end

  def index
  	@contacts = Contact.find_by(params[:user_id])
  end

private

  def contacts_params
  	params.require(:contact).permit(:firstname, :lastname, :email, :phone, :notes)
	end

  def load_user
		@user = User.find(params[:user_id])
	end

  
end
