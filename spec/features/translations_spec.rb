describe "Translations page", type: :feature do
  before do
    visit "/translations"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Translations")
  end
end
