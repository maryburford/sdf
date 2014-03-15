class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.integer :user_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
