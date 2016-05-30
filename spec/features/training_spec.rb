describe "Training page", type: :feature do
  before do
    visit "/training"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "You can be a Bible First coach.")
  end
end
