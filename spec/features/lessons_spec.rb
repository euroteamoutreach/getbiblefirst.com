describe "The Lessons page", type: :feature do
  before do
    visit "/lessons"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "The Lessons")
  end
end
