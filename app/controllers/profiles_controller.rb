class ProfilesController < ApplicationController


 def new
 @profile = Profile.new
 @profile.user = current_user
 params[:user_id] = current_user.id

 end

 def create
  @profile = Profile.new(profile_params)
  @profile.user = current_user
  if @profile.save
    flash[:success] = "Welcome to Shitty Dude Finder!"
    redirect_to @profile
  else
    flash[:danger] = "Fix the input here, bud!"
    redirect_to new_profile_path
  end
 end

 def show
 if current_user
  @profile = Profile.find(current_user.profile.id)
  @user = @profile.user
 else
  redirect_to new_profile_path
 end
 end

def show_user
@profile = Profile.find(params[:id])
@user = @profile.user
end



 def edit
 @questions = Profile::QUESTIONS.sample(30)


 if current_user
  @profile = Profile.find(current_user.profile.id)
  @user = @profile.user

 else
  redirect_to new_profile_path
 end
end


 def update
 @profile = Profile.find(params[:id])
 @profile.update!(profile_params)
 redirect_to :action => 'edit',:id => Profile.find(current_user.profile.id)
 end

  def shitty_answers
    @profile = Profile.find(current_user.profile.id)
    @questions = Profile::QUESTIONS.sample(30)

  end

def user_answers
    @profile = Profile.find(params[:id])
    @questions = Profile::QUESTIONS

  end

 def update_photo
 @profile = Profile.find(params[:id])
 @profile.update!(profile_params)
 redirect_to :action => 'show',:id => Profile.find(current_user.profile.id)
 end

def remove_photo
  profile = Profile.find(current_user.profile.id)
  profile.remove_profile_photo! if profile
  redirect_to :action => 'show',:id => Profile.find(current_user.profile.id)

end

def destroy
  @profile = Profile.find(current_user.profile.id)
  @profile.bio.destroy
end
 private

 def profile_params
  params.require(:profile).permit(:city, :state, :zip_code, :pizza_beer, :concept_reality, :fact_fiction, :theory_practice, :moms_dads, :sandles_socks, :user_id, :created_at, :updated_at, :europe_paris, :profile_photo, :drugs, :trucks, :sleater_kelly, :isp, :crew, :more_less, :reggae_mouse, :jobs, :pets_cats, :red_white, :sport_ball, :meat_murder, :art_commerce, :butler_judith, :fleetwood_mcdonalds, :skate_die, :sanders, :midwest_east, :modest_eek, :pride_prejudice, :dwi_dui, :show_tell, :pat_vanna, :beach, :peanut_jelly, :animal_boys, :fireman_spaceman, :games_sports, :seitan_satan, :one_fish, :sixnine_fourtwenty, :mint_ice, :marriage_divorce, :steve_jane, :marco_polo, :where_who, :mfa_mba, :soup_salad, :paper_plastic, :cut_uncut, :summer_wrestle, :bush_clinton, :perot_buchanan, :pizza_taco, :molly_lucy, :energy, :pitcher_tallboy, :shirts_skins, :spark_tap, :rap_metal, :brush_floss, :vinyl_flac, :yes_no, :hbo_Sho, :privelage, :business_pleasure, :liquor_before, :sunrise_set, :hall_oates, :simon_garfunkle, :beatles, :stick_tribal, :nor_so, :gluten_mumia, :mac_pc, :netflix_chill, :fat_jerry, :friends_benefit, :duck_goose, :black_monday, :eeny_meeny, :chicken_egg, :calvin_hobbes, :space, :beard_moustache, :beard_bread, :protoplasm_ectoplasm, :liberty_diving, :preteen_tween, :neither_either, :rock_lock, :tang_capri, :pool_ball, :golf_fishing, :red_blue, :love_hate, :vim_emacs, :york_jersey, :desert_tundra, :green_ice, :ball_meth, :bye_riddance, :aliefs_beliefs, :gophers_groundhogs, :felony_misdemeanor, :bio, :whoami, :peaches_herb, :juggalo_bungalow, :pecan_duncan, :gummy_sandals, :fela_bela, :eggo_ego, :seger_dylan, :kleenex_skrillex, :smoke_bowls, :webbed_nipple, :zoobilee_riot, :have_hold, :mandles, :rat_duck, :mandatory_overdrive, :townhouse_zandt, :jedi_jew, :lydia_lunchables, :appeteaser, :opp_dna, :pauly_cole, :deuce_man, :paul_report, :lmfao_schwarts, :blind_massacre, :ebola_ricola, :march_martha, :mocha_flat, :sousa_siouxsie, :ovaltine_carnation, :bad_high, :stop_by, :feminism_euphemism, :bf_lynnard, :loch_quik, :warby_pork, :canned_liquid, :purina_purell, :hook_crook, :heart_eurythmics, :would_rather, :tar_feather, :dead_alive, :time_meaning, :bicuspid_molar, :fame_riches, :right_wrong, :quantum_determinism, :type_hep, :b_a, :ants_aunts, :llama_alpaca, :pretty_shitty, :gw_dubstep, :cornithians_thessalonians, :pea_coat, :spy_kids, :cronut_dossant, :some_none, :bad_back, :lotto, :williams_bush, :win_lose, :dragons_lizards, :werewolves_vampires, :regular_pot, :anime_manga, :advice_dice, :alice_wonderchain, :swiss_rainbow, :found, :alpha_omega, :ship_toads, :pleistoscene_pleiades, :money_clicks, :grave_tomb, :october_mischief, :choke_nelson, :blue_stripe, :war_peace, :scarlet_plum, :reynolds_gosling, :erudite_airy, :hey_hay, :nay_neigh, :omg_lol, :pay_pal, :toilet, :olsen_twins, :hot_not, :demon_daemon, :crumple_rumple, :tractor, :home_peter, :work, :collaborate_corroborate, :eb_white, :hat, :this_that, :cancer_heart, :stuff_things, :permission_forgiveness, :capitalism_equality)

 end

end

