class AddMoreStuffToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :space, :string
    add_column :profiles, :beard_moustache, :string
    add_column :profiles, :beard_bread, :string
    add_column :profiles, :protoplasm_ectoplasm, :string
    add_column :profiles, :liberty_diving, :string
    add_column :profiles, :preteen_tween, :string
    add_column :profiles, :neither_either, :string
    add_column :profiles, :rock_lock, :string
    add_column :profiles, :tang_capri, :string
    add_column :profiles, :pool_ball, :string
    add_column :profiles, :golf_fishing, :string
    add_column :profiles, :red_blue, :string
    add_column :profiles, :love_hate, :string
    add_column :profiles, :vim_emacs, :string
    add_column :profiles, :york_jersey, :string
    add_column :profiles, :desert_tundra, :string
    add_column :profiles, :green_ice, :string
    add_column :profiles, :ball_meth, :string
    add_column :profiles, :bye_riddance, :string
    add_column :profiles, :aliefs_beliefs, :string
    add_column :profiles, :gophers_groundhogs, :string
    add_column :profiles, :felony_misdemeanor, :string
  end
end
