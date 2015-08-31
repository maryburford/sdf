class AddTurdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :turds, :integer, default: 0
  end
end
