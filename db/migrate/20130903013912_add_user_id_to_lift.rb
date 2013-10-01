class AddUserIdToLift < ActiveRecord::Migration
  def change
    add_column :lifts, :user_id, :integer
  end
end
