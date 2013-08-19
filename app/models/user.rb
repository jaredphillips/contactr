class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, uniqueness: true
  has_many :contacts
end
