
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jack'
  fill_in :player_2_name, with: 'Mike'
  click_button 'Submit'
end
