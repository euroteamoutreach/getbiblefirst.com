describe "Bulk Purchase page", type: :feature do
  before do
    visit "/purchase/bulk-69c1d6a126.html"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Bulk Orders")
  end
end
