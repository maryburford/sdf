class AddEuropeParisToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :europe_paris, :string
  end
end
