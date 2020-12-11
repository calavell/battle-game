feature 'change turn' do
  scenario 'starts with Player 1s turn displaying on the screen' do
    sign_in_and_play
    expect(page).to have_text("Sarahs turn")
    expect(page).not_to have_text("Amans turn")
  end

  scenario 'on second turn, Player 2s turn displaying on the screen' do
    sign_in_and_play
    click_link("Attack")
    click_link("End turn")
    expect(page).to have_text("Amans turn")
    expect(page).not_to have_text("Sarahs turn")
  end
end
