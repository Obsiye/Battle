feature "homepage" do
  scenario "submit player form" do
    sign_in_and_play
    expect(page).to have_content 'Abdi vs Al'
  end
end
