describe "Bulk Purchase page", type: :feature do
  before do
    visit "/purchase/bulk-69c1d6a126.html"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Bulk Orders")
  end

  it "displays 'noindex, nofollow' for robots" do
    meta_tag = "meta[name=\"robots\"][content=\"noindex, nofollow\"]"
    expect(page).to have_css(meta_tag, visible: false)
  end
end
