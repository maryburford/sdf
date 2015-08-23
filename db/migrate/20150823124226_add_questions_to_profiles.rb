class AddQuestionsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :drugs, :string
    add_column :profiles, :trucks, :string
    add_column :profiles, :sleater_kelly, :string
    add_column :profiles, :isp, :string
    add_column :profiles, :crew, :string
    add_column :profiles, :more_less, :string
    add_column :profiles, :reggae_mouse, :string
    add_column :profiles, :jobs, :string
    add_column :profiles, :pets_cats, :string
    add_column :profiles, :red_white, :string
    add_column :profiles, :sport_ball, :string
    add_column :profiles, :meat_murder, :string
    add_column :profiles, :art_commerce, :string
    add_column :profiles, :butler_judith, :string
    add_column :profiles, :fleetwood_mcdonalds, :string
    add_column :profiles, :skate_die, :string
    add_column :profiles, :sanders, :string
    add_column :profiles, :midwest_east, :string
    add_column :profiles, :modest_eek, :string
    add_column :profiles, :pride_prejudice, :string
    add_column :profiles, :dwi_dui, :string
    add_column :profiles, :show_tell, :string
    add_column :profiles, :pat_vanna, :string
  end
end
