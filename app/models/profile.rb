class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_photo, ProfilePhotoUploader
  validates :whoami, presence: true
  validates :bio, presence: true

   QUESTIONS = [
[:pizza_beer, "Pizza or Beer?", ["Pizza","Beer","Both"]],
[:drugs, "Drugs or Marijuana?", ["Drugs","Marijuana","Neither"]],
[:concept_reality, "Concept or Reality?", ["Concept","Reality","Both"]],
[:moms_dads, "Moms or Dads?", ["Moms","Dads","Both"]],
[:sandles_socks, "Socks or Sandals?", ["Socks","Sandals","Both"]],
[:europe_paris, "Europe or Paris?", ["Europe","Paris","Both"]],
[:trucks, "Trucks or Four Wheelers?", ["Trucks","Four Wheelers","Both"]],
[:sleater_kelly, "Sleater Kinney or Kelly Slater?", ["Sleater Kinney","Kelly Slater","Both"]],
[:theory_practice, "Theory or Practice?", ["Theory","Practice","Both"]],
[:isp, "Comcast or Time Warner?", ["Comcast","Time Warner","Neither"]],
[:crew, "Crew Neck and Crew Cut or Crew Sock and Crew?", ["Crew Neck and Crew Cut","Crew Sock and J.Crew","Both"]],
[:more_less, "More or Less?", ["More","Less","Both"]],
[:reggae_mouse, "Reggae or Eek A Mouse?", ["Reggae","Eek a Mouse","Both"]],
[:jobs, "Two Jobs or One Job?", ["Two Jobs","One Job","Neither"]],
[:pets_cats, "Pets or Cats?", ["Pets","Cats","Both"]],
[:red_white, "Red or White?", ["Red","White","Rosé"]],
[:sport_ball, "Football and Baseball or Basketball and Hockey?", ["Football and Baseball","Basketball and Hockey","Both"]],
[:meat_murder, "Meat or Murder?", ["Meat","Murder","Both"]],
[:art_commerce, "Art or Commerce?", ["Art","Commerce","Both"]],
[:butler_judith, "Judith Butler or Lee Daniels' 'The Butler'", ["Judith Butler","Lee Daniels' 'The Butler'","Both"]],
[:fleetwood_mcdonalds, "Fleetwood Mac or McDonald's?", ["Fleetwood Mac","McDonalds","Both"]],
[:skate_die, "Skate or Die?", ["Skate","Die","Both"]],
[:sanders, "Bernie or Deion Sanders?", ["Bernie Sanders","Deion Sanders","Both"]],
[:midwest_east, "Midwest or Middle East?", ["Midwest","Middle East","Both"]],
[:modest_eek, "Modest Mouse or Eek A Mouse?", ["Modest Mouse","Eek A Mouse","Both"]],
[:pride_prejudice, "Pride or Prejudice?", ["Pride","Prejudice","Both"]],
[:dwi_dui, "DWI or DUI?", ["DWI","DUI","Both"]],
[:show_tell, "Show or Tell?", ["Show","Tell","Both"]],
[:pat_vanna, "Pat Sajak or Vanna White?", ["Pat Sajak","Vanna White","Both"]],
[:beach, "Aruba, Jamaica or Bermuda, Bahama?", ["Aruba, Jamaica","Bermuda, Bahama","Kokomo"]],
[:peanut_jelly, "Peanut Butter or Jelly", ["Peanutbutter","Jelly","Both"]],
[:animal_boys, "Animal Collective or Beach Boys?", ["Animal Collective","Beach Boys","Both"]],
[:fireman_spaceman, "Fireman or Spaceman?", ["Fireman","Spaceman","Both"]],
[:games_sports, "Games or Sports?", ["Games","Sports","Both"]],
[:seitan_satan, "Seitan or Satan?", ["Seitan","Satan","Both"]],
[:one_fish, "One Fish or Two Fish?", ["One Fish , Two Fish","Three Fish, Blue Fish","Both"]],
[:sixnine_fourtwenty, "69 or 420?", ["69","420","666"]],
[:mint_ice, "Mint Condition or Mint Ice Cream?", ["Mint Condition","Mint Ice Cream","Both"]],
[:marriage_divorce, "Marriage or Divorce?", ["Marriage ","Divorce","Neither"]],
[:steve_jane, "Jane Austen or Steve Austin?", ["Jane Austen","Steve Austen","Both"]],
[:marco_polo, "Marco or Polo?", ["Marco","Polo","Both"]],
[:where_who, "Where am I or Who am I?", ["Where am I","Who am I","Both"]],
[:mfa_mba, "MFA or MBA?", ["MFA","MBA","Both"]],
[:soup_salad, "Soup or Salad?", ["Soup","Salad","Neither"]],
[:paper_plastic, "Paper or Plastic?", ["Paper","Plastic","Both"]],
[:cut_uncut, "Cut or Uncut?", ["Cut","Uncut","Both"]],
[:summer_wrestle, "Summer Slam or Wrestlemania?", ["Summer Slam","Wrestlemania","Neither"]],
[:bush_clinton, "Bush or Clinton?", ["Bush","Clinton","Neither"]],
[:perot_buchanan, "Perot or Buchanan?", ["Perot","Buchanan","Trump"]],
[:pizza_taco, "Pizza Hut or Taco Bell?", ["Pizza Hut","Taco Bell","Both"]],
[:molly_lucy, "Molly or Lucy?", ["Molly","Lucy","Both"]],
[:energy, "Wind or Solar?", ["Wind","Solar","Petroleum"]],
[:pitcher_tallboy, "Pitcher or Tallboy?", ["Pitcher","Tallboy","Both"]],
[:shirts_skins, "Shirts or Skins?", ["Shirts","Skins","Both"]],
[:spark_tap, "Sparkling or Tap?", ["Sparkling","Tap","Both"]],
[:rap_metal, "Rap or Metal?", ["Rap","Metal","Both"]],
[:brush_floss, "Brush or Flossing?", ["Brush","Floss","Neither"]],
[:vinyl_flac, "Vinyl or Flac?", ["Vinyl","FLAC","Neither"]],
[:yes_no, "Yes or No?", ["Yes","No","Both"]],
[:hbo_Sho, "HBO or Showtime?", ["HBO","Showtime","Neither"]],
[:privelage, "Privilege or Responsibility?", ["Privilege ","Responsibility","Both"]],
[:business_pleasure, "Business or Pleasure?", ["Business","Pleasure","Neither"]],
[:liquor_before, "Liquor before Beer or Beer before Liquor?", ["Liquor before Beer","Beer before Liquor","Both"]],
[:sunrise_set, "Sunrise or Sunset?", ["Sunrise","Sunset","Both"]],
[:hall_oates, "Hall or Oates?", ["Hall","Oates","Both"]],
[:simon_garfunkle, "Simon or Garfunkle", ["Simon","Garfunkle","Both"]],
[:beatles, "George or Ringo?", ["George","Ringo","Deez Nuts"]],
[:stick_tribal, "Stick and Poke or Tribal?", ["Stick and Poke","Tribal","Both"]],
[:nor_so, "Norcal or Socal?", ["Norcal","Socal","Neither"]],
[:gluten_mumia, "Gluten Free or Free Mumia?", ["Gluten Free","Free Mumia","Both"]],
[:mac_pc, "Mac or PC?", ["Mac","PC","Neither"]],
[:netflix_chill, "Netflix or Chill?", ["Netflix","Chill","Both"]],
[:fat_jerry, "Fuck Jerry or The Fat Jew?", ["Fuck Jerry","The Fat Jew","Neither"]],
[:friends_benefit, "Friends or Benefits?", ["Friends","Benefits","Both"]],
[:duck_goose, "Duck or Goose?", ["Duck","Goose","Neither"]],
[:black_monday, "Black Friday or Cyber Monday?", ["Black Friday","Cyber Monday ","Both"]],
[:eeny_meeny, "Eeny Meeny or Miny Moe?", ["Eeny Meeny","Miny Moe","Both"]],
[:chicken_egg, "Chicken or Egg?", ["Chicken","Egg","Both"]],
[:calvin_hobbes, "Calvin or Hobbes?", ["Calvin","Hobbes","Both"]],
[:space, "Space or  ?", ["Space"," ","Both"]],
[:beard_moustache, "Beard or Moustache?", ["Beard","Moustache","Both"]],
[:beard_bread, "Beard or Bread?", ["Beard","Bread","Both"]],
[:protoplasm_ectoplasm, "Protoplasm or Ectoplasm?", ["Protoplasm","Ectoplasm","Both"]],
[:liberty_diving, "Libery Bell or Diving Bell?", ["Liberty Bell","Diving Bell","Both"]],
[:preteen_tween, "Preteen or Tween?", ["Preteen","Tween","Both"]],
[:neither_either, "Neither or Either?", ["Neither","Either","Both"]],
[:rock_lock, "Pop Rock or Pop Lock?",["Pop Rock","Pop Lock","Both"]],
[:tang_capri, "Tang or Capri Sun?",["Tang","Capri Sun","Both"]],
[:pool_ball, "Pool Cue or Cue Ball?",["Pool Cue","Cue Ball","Both"]],
[:golf_fishing, "Golf or Fishing?",["Golf","Fishing","Neither"]],
[:duck_goose, "Duck or Goose?",["Duck","Goose","Both"]],
[:red_blue, "Red Pill or Blue Pill?",["Red Pill","Blue Pill","Both"]],
[:love_hate, "I Love You or I Hate You?",["I Love You","I Hate You","Both"]],
[:vim_emacs, "Vim or Emacs?",["Vim","Emacs","Neither"]],
[:york_jersey, "New York or New Jersey?",["New York","New Jersey","Neither"]],
[:desert_tundra, "Desert or Tundra?",["Desert","Tundra","Both"]],
[:green_ice, "Greenland or Iceland?",["Greenland","Iceland","Both"]],
[:ball_meth, "Crystal Ball or Crystal Meth?",["Crystal Ball","Crystal Meth","Both"]],
[:bye_riddance, "Good Bye or Good Riddance?",["Good Bye","Good Riddance","Both"]],
[:aliefs_beliefs, "Aliefs or Beliefs?",["Aliefs","Beliefs","Both"]],
[:gophers_groundhogs, "Gophers or Groundhogs?",["Gophers","Groundhogs","Both"]],
[:felony_misdemeanor, "Felony or Misdemeanor?",["Felony","Misdemeanor","Both"]],
[:peaches_herb, "Peaches or Herb?", ["Peaches","Herb","Neither"]], 
[:juggalo_bungalow, "Juggalo or Bungalow?", ["Juggalo","Bungalow","Both"]], 
[:pecan_duncan, "Pecan Sandies or Sandy Duncan?", ["Pecan Sandies","Sandy Duncan","They're the same thing."]], 
[:gummy_sandals, "Gummy Vitamins or Jelly Sandals", ["Gummy Vitamins","Jelly Sandals","Both"]], 
[:fela_bela, "Fela Kuti or Bela Fleck?", ["Fela Kuti","Bela Fleck","Both"]], 
[:eggo_ego, "Eggo or Ego?", ["Eggo","Ego","Both"]], 
[:seger_dylan, "Early Seger or Late Dylan?", ["Early Seger","Late Dylan","Both"]], 
[:kleenex_skrillex, "Kleenex or Skrillex?", ["IYDKYDG","Skrillex","Neither"]], 
[:smoke_bowls, "Smoking at Bowling or Smoking a Bowl?", ["Smoking at Bowling","Smoking a Bowl","Both"]], 
[:webbed_nipple, "Webbed Toes or Third Nipple?", ["Webbed Toes","Third Nipple","Both"]], 
[:zoobilee_riot, "Zoobilee Zoo or Zoot Suit Riot?", ["Zoobilee Zoo"," Zoot Suit Riot","Neither"]], 
[:have_hold, "To Have or To Hold?", ["To Have","To Hold","Both"]], 
[:mandles, "Mandles or Guyliner?", ["Mandles","Guyliner","Shut up"]], 
[:rat_duck, "Rattails or Duck Tales?", ["Rattails"," Duck Tales","Both"]], 
[:mandatory_overdrive, "Mandatory Minimums or Maximum Overdrive?", ["Mandatory Minimums","Maximum Overdrive","Neither"]], 
[:townhouse_zandt, "Townes Van Zandt or Townhouse Crackers?", ["Townes Van Zandt","Townhouse Crackers","Both"]], 
[:jedi_jew, "Judaism or Jedism?", ["Judaism","Jedism","Both"]], 
[:lydia_lunchables, "Lunchables or Lydia Lunch?", ["Lunchables","Lydia Lunch","Both"]], 
[:appeteaser, "Appeteasers or Anytizers?", ["Appeteasers","Anytizers","Both"]], 
[:opp_dna, "OPP or DNA?", ["OPP","DNA","Both"]], 
[:pauly_cole, "Pauly Shore or Paula Cole?", ["Pauly Shore","Paula Cole","Neither"]], 
[:deuce_man, "Deuce Bigelow or The Ladies' Man?", ["Deuce Bigelow","The Ladies' Man","Both"]], 
[:paul_report, "Paul Blart Mall Cop or Observe & Report?", ["Paul Blart Mall Cop ","Observe & Report","Neither"]], 
[:lmfao_schwarts, "LMFAO or FAO Schwartz?", ["LMFAO","FAO Schwartz","Both"]], 
[:blind_massacre, "Blind Melon or The Brian Jonestown Massacre?", ["The Dandy Warhols","The Brian Jonestown Massacre","Who?"]], 
[:ebola_ricola, "Ebola or Ricola?", ["Ebola","Ricola","Neither"]], 
[:march_martha, "Martha Washington or The March on Washington?", ["Martha Washington","The March on Washington","Both"]], 
[:mocha_flat, "Tall Mocha or Flat White?", ["Tall Mocha","Flat White","None of your business"]], 
[:sousa_siouxsie, "Sousaphone or Siouxsie Sioux?", ["Sousaphone","Siouxsie Sioux","Both"]], 
[:ovaltine_carnation, "Ovaltine or Carnation?", ["Ovaltine","Carnation","Gross"]], 
[:bad_high, "The Badlands or The High Plains?", ["The Badlands","The High Plains","Both"]], 
[:stop_by, "Stop'n'Chat or Walk on By?", ["Stop'n'Chat","Walk on By","Depends"]], 
[:feminism_euphemism, "Feminism or Euphemism?", ["Feminism","Euphemism","Both"]], 
[:bf_lynnard, "Lynnrd Skynnrd or B.F. Skinner?", ["Lynnrd Skynnrd","B.F. Skinner","Both"]], 
[:loch_quik, "Loch Ness or NesQuik?", ["Loch Ness","NesQuik","Stop it"]], 
[:warby_pork, "Warby Parker or Arby's Pulled Pork?", ["Warby Parker","Arby's Pulled Pork","Both"]], 
[:canned_liquid, "Canned Heat or Liquid Smoke?", ["Canned Heat","Liquid Smoke","Both"]], 
[:purina_purell, "Purina Pro Plan or Purell Hand Sanitizer?", ["Purina Pro Plan","Purell Hand Sanitizer","Neither"]], 
[:hook_crook, "By Hook or By Crook?", ["By Hook","By Crook","Both"]], 
[:heart_eurythmics, "Heart Arrhythmia or Eurhythmics?", ["Heart Arrhythmia","Eurhythmics","Heart"]], 
[:would_rather, "Would you rather or Not?", ["Would you rather","Not","Both"]], 
[:tar_feather, "Tar or Feather?", ["Tar","Feather","Both"]], 
[:dead_alive, "Dead or Alive?", ["Dead","Alive","Both"]], 
[:time_meaning, "Time or Meaning?", ["Time","Meaning","Neither"]], 
[:bicuspid_molar, "Bicuspid or Molar?", ["Bicuspid","Molar","Both"]], 
[:fame_riches, "Fame or Riches?", ["Fame","Riches","Neither"]], 
[:right_wrong, "Right or Wrong?", ["Right","Wrong","Neither"]], 
[:quantum_determinism, "Quantum Physics or Physical Determinism?", ["Quantum Physics","Physical Determinism","Both"]], 
[:type_hep, "Type A or Hepatitis A?", ["Type A","Hepatitis A","Both"]], 
[:b_a, "B+ or A-?", ["B+","A-","Neither"]], 
[:ants_aunts, "Ants or Aunts?", ["Ants","Aunts","Both"]], 
[:llama_alpaca, "Llama or Alpaca?", ["Llama","Alpaca","Both"]], 
[:pretty_shitty, "Pretty Shitty or Really Shitty", ["Pretty Shitty","Really Shitty","Both"]], 
[:gw_dubstep, "George W. or Dubstep?" , ["George W.","Dubstep","Both"]], 
[:cornithians_thessalonians, "Cornithians or Thessalonians?", ["Corinthians","Thessalonians","Neither"]], 
[:pea_coat, "Pea Head or Peacoat?", ["Peahead","Peacoat","Neither"]], 
[:spy_kids, "Spy Kids or Spy Kids 2?", ["Spy Kids","Spy Kids 2","Both"]], 
[:cronut_dossant, "Cronuts or Dossants?", ["Cronuts","Dossants","Both"]], 
[:some_none, "No Chance or Some Chance?", ["No Chance","Some Chance","Both"]], 
[:bad_back, "Bad Trip or Flashback?", ["Bad Trip","Flashback","Both"]], 
[:lotto, "Win Lottery or Lifetime of Hard Work?", ["Win Lottery","Lifetime of Hard Work","Neither"]], 
[:williams_bush, "East Williamsburg or Bushwick?", ["East Williamsburg","Bushwick","Same"]], 
[:win_lose, "Win or Lose?", ["Win","Lose","Tie"]], 
[:dragons_lizards, "Dragons or Lizards?", ["Dragons","Lizards","No"]], 
[:werewolves_vampires, "Werewolves or Vampires?", ["Werewolves","Vampires","Both"]], 
[:regular_pot, "Regular Sticker or Potsticker?", ["Regular Sticker","Potsticker","Both"]], 
[:anime_manga, "Anime or Manga?", ["Anime","Manga","Both"]], 
[:advice_dice, "Good Advice or Roll the Dice?", ["Good Advice","Roll the Dice","Neither"]], 
[:alice_wonderchain, "Alice in Wonderland or Alice in Chains?", ["Alice in Wonderland","Alice in Chains","Neither"]], 
[:swiss_rainbow, "Swiss Chard or Rainbow Chard?", ["Swiss Chard","Rainbow Chard","Neither"]], 
[:found, "Profound or Confound?", ["Profound","Confound","Both"]], 
[:alpha_omega, "Alpha or Omega?", ["Alpha ","Omega","Neither"]], 
[:ship_toads, "Battleship or Battletoads?", ["Battleship","Battletoads","Both"]], 
[:pleistoscene_pleiades, "The Pleistoscene or The Pleiades?", ["The Pleistoscene","The Pleiades","Neither"]], 
[:money_clicks, "Money or Clicks?", ["Money","Clicks","Both"]], 
[:grave_tomb, "Gravestone or Tombstone?", ["Gravestone","Tombstone","Neither"]], 
[:october_mischief, "October 30th or Mischief Night?", ["October 30th","Mischief Night","Both"]], 
[:choke_nelson, "Chokehold or Half Nelson?", ["Chokehold","Half Nelson","Neither"]], 
[:blue_stripe, "Blue Bottle or Red Stripe?", ["Blue Bottle","Red Stripe","Both"]], 
[:war_peace, "War or Peace?", ["War","Peace","Both"]], 
[:scarlet_plum, "Miss Scarlet or Professor Plum?", ["Miss Scarlet","Professor Plum","Neither"]], 
[:reynolds_gosling, "Ryan Reynolds or Ryan Gosling?", ["Ryan Reynolds","Ryan Gosling","Both"]], 
[:erudite_airy, "Erudite or Nike Air?", ["Erudite","Nike Air","Both"]], 
[:hey_hay, "Hey or Hay", ["Hey","Hay","Both"]], 
[:nay_neigh, "Nay or Neigh", ["Nay","Neigh","Nae Nae"]], 
[:omg_lol, "OMG or LOL?", ["OMG","LOL","Both"]], 
[:pay_pal, "Pay Pal or Play Pal?", ["Pay Pal","Play Pal","Both"]], 
[:toilet, "Toiletries or Toilet Trees?", ["Toiletries","Toilet Trees","Both"]], 
[:olsen_twins, "Mary Kate or Ashley?", ["Mary Kate","Ashley","Both"]], 
[:hot_not, "Hot or Not?", ["Hot ","Not","Both"]], 
[:demon_daemon, "Demon or Daemon?", ["Demon","Daemon","Both"]], 
[:crumple_rumple, "Crumple or Rumple?", ["Crumple","Rumple","Both"]], 
[:tractor, "Protractor or Contractor?", ["Protractor","Contractor","Both"]], 
[:home_peter, "Home Peter or Work Peter", ["Home","Work","Both"]], 
[:work, "Homework or Work?", ["Homework","Work","Both"]], 
[:collaborate_corroborate, "Collaborate or Corroborate?", ["Collaborate","Corroborate","Both"]], 
[:eb_white, "E.B. White or White People?", ["E.B. White ","White People","Both"]], 
[:hat, "Black Hat or White Hat?", ["Black Hat","White Hat","Neither"]], 
[:this_that, "This or That?", ["This","That","Both"]], 
[:cancer_heart, "Cancer or Heart Attack?", ["Cancer","Heart Attack","Both"]], 
[:stuff_things, "Stuff or Things?", ["Stuff","Things","Both"]], 
[:permission_forgiveness, "Permission or Forgiveness?", ["Permission","Forgiveness","Neither"]], 
[:capitalism_equality, "Capitalism or Equality?", ["Capitalism","Equality","Neither"]], 
  ]
end
