class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :pizza_beer
      t.string :concept_reality
      t.string :fact_fiction
      t.string :theory_practice
      t.string :moms_dads
      t.string :sandles_socks
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
