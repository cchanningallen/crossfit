class User < ActiveRecord::Base
  has_secure_password
  has_many :wods

  validates_uniqueness_of :username, :email
end
