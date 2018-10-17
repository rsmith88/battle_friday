
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Jack vs. Mike'
  end
end


feature "Player 1 can see Player 2's hit points" do
  scenario 'can see hit points' do
    sign_in_and_play
    expect(page).to have_content "Mike's hit points 60"
    end
end

feature "Player 1 attacts Player 2" do
  scenario 'Player 1 clicks attack button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Attack")
  end
end

feature 'Player 1 attacked Player 2' do
  scenario 'It confirms that Player 1 attacked Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jack attacked Mike'
  end
end
