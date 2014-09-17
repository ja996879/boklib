class Sess < ActiveRecord::Migration
  def change
   add_column :users , :session_stronge , :string
  end
end
