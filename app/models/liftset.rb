class Liftset < ActiveRecord::Base
  belongs_to :lift 
  belongs_to :user, through: :lift
end
