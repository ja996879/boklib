class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :name
      t.string :netsite

      t.timestamps
    end
  end
end
