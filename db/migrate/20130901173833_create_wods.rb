class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :name
      t.string :wod_type
      t.string :score
      t.string :score_type
      t.boolean :rx
      t.string :notes

      t.timestamps
    end
  end
end
