class AdminUser < ActiveRecord::Base
  # before_save :add_user
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  has_many :boutiques
  has_many :items
  has_many :brands
  has_many :categories

  def self.add_user
    User.create!(:email => "testtest@testtest.ru", :password => "testtest", :password_confirmation => "testteet")
  end

end
