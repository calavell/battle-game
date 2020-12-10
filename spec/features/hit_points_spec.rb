
feature "Viewing hit points" do
  scenario 'See the hit points for Player 2' do
    sign_in_and_play
    expect(page).to have_text("Aman: 100HP")
  end
end
