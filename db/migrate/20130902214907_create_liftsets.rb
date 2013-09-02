class CreateLiftsets < ActiveRecord::Migration
  def change
    create_table :liftsets do |t|
      t.integer :setnum
      t.float :weight
      t.integer :reps
      t.integer :lift_id

      t.timestamps
    end
  end
end
