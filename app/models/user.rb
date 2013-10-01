class User < ActiveRecord::Base
  has_secure_password
  has_many :wods
  has_many :lifts
  has_many :liftsets, through: :lifts

  validates_uniqueness_of :username, :email
end
