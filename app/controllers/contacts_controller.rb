class ContactsController < ApplicationController

	before_filter :load_user

  def new
  	@contact = Contact.new()
  end

  def create
  end

  def index
  end

private

  def load_user
		@user = User.find(params[:user_id])
	end

  
end
