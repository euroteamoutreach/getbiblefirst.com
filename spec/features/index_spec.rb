describe "home page", type: :feature do
  before do
    visit "/"
  end

  it "displays the correct heading" do
    expect(page).to have_css("section.alpha > .logo-wrapper")
  end
end
