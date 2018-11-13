feature "homepage" do
  scenario "viewing the homepage" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
end
