class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_photo, ProfilePhotoUploader
  
  QUESTIONS = [
[:pizza_beer, "Pizza  or Beer?", ["Pizza","Beer","Both"]], 
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
  ]
end
