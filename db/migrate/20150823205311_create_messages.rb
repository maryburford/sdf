class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.integer :sender_id
      t.integer :reciever_id
      t.datetime :read_at
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
