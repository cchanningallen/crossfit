class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :sets
      t.text :notes

      t.timestamps
    end
  end
end
