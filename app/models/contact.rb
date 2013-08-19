class Contact < ActiveRecord::Base

	validates_presence_of :firstname, :lastname, :email, :phone, :notes

	belongs_to :user
end
