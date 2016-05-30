describe "Purchase page", type: :feature do
  before do
    visit "/purchase"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Purchase Bible First")
  end
end
