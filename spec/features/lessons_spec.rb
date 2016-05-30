describe "The Lessons page", type: :feature do
  before do
    visit "/lessons"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "The Lessons")
  end

  it "navigates to Lesson 1 page" do
    click_link "Lesson 1: Introducing the Bible"
    expect(current_path).to eq("/lessons/lesson1")
    expect(page).to have_selector("h3", text: "Lesson 1: Introducing the Bible")
  end

  it "navigates to Lesson 2 page" do
    click_link "Lesson 2: Who is God?"
    expect(current_path).to eq("/lessons/lesson2")
    expect(page).to have_selector("h3", text: "Lesson 2: Who is God?")
  end

  it "navigates to Lesson 3 page" do
    click_link "Lesson 3: God Created the Spirit Beings"
    expect(current_path).to eq("/lessons/lesson3")
    expect(page).to have_selector("h3", text: "Lesson 3: God Created the Spirit Beings")
  end

  it "navigates to Lesson 4 page" do
    click_link "Lesson 4: Creation, Part 1"
    expect(current_path).to eq("/lessons/lesson4")
    expect(page).to have_selector("h3", text: "Lesson 4: Creation, Part 1")
  end

  it "navigates to Lesson 5 page" do
    click_link "Lesson 5: Creation, Part 2"
    expect(current_path).to eq("/lessons/lesson5")
    expect(page).to have_selector("h3", text: "Lesson 5: Creation, Part 2")
  end

  it "navigates to Lesson 6 page" do
    click_link "Lesson 6: Adam and Eve"
    expect(current_path).to eq("/lessons/lesson6")
    expect(page).to have_selector("h3", text: "Lesson 6: Adam and Eve")
  end

  it "navigates to Lesson 7 page" do
    click_link "Lesson 7: The Fall"
    expect(current_path).to eq("/lessons/lesson7")
    expect(page).to have_selector("h3", text: "Lesson 7: The Fall")
  end

  it "navigates to Lesson 8 page" do
    click_link "Lesson 8: The Curse and the Promised Deliverer"
    expect(current_path).to eq("/lessons/lesson8")
    expect(page).to have_selector("h3", text: "Lesson 8: The Curse and the Promised Deliverer")
  end

  it "navigates to Lesson 9 page" do
    click_link "Lesson 9: Cain and Abel"
    expect(current_path).to eq("/lessons/lesson9")
    expect(page).to have_selector("h3", text: "Lesson 9: Cain and Abel")
  end

  it "navigates to Lesson 10 page" do
    click_link "Lesson 10: Noah and the Great Flood"
    expect(current_path).to eq("/lessons/lesson10")
    expect(page).to have_selector("h3", text: "Lesson 10: Noah and the Great Flood")
  end

  it "navigates to Lesson 11 page" do
    click_link "Lesson 11: Abraham, Part 1"
    expect(current_path).to eq("/lessons/lesson11")
    expect(page).to have_selector("h3", text: "Lesson 11: Abraham, Part 1")
  end

  it "navigates to Lesson 12 page" do
    click_link "Lesson 12: Abraham, Part 2"
    expect(current_path).to eq("/lessons/lesson12")
    expect(page).to have_selector("h3", text: "Lesson 12: Abraham, Part 2")
  end

  it "navigates to Lesson 13 page" do
    click_link "Lesson 13: Sodom and Gomorrah"
    expect(current_path).to eq("/lessons/lesson13")
    expect(page).to have_selector("h3", text: "Lesson 13: Sodom and Gomorrah")
  end

  it "navigates to Lesson 14 page" do
    click_link "Lesson 14: Isaac"
    expect(current_path).to eq("/lessons/lesson14")
    expect(page).to have_selector("h3", text: "Lesson 14: Isaac")
  end

  it "navigates to Lesson 15 page" do
    click_link "Lesson 15: Isaac and His Family"
    expect(current_path).to eq("/lessons/lesson15")
    expect(page).to have_selector("h3", text: "Lesson 15: Isaac and His Family")
  end

  it "navigates to Lesson 16 page" do
    click_link "Lesson 16: Jacob, Part 1"
    expect(current_path).to eq("/lessons/lesson16")
    expect(page).to have_selector("h3", text: "Lesson 16: Jacob, Part 1")
  end

  it "navigates to Lesson 17 page" do
    click_link "Lesson 17: Jacob, Part 2"
    expect(current_path).to eq("/lessons/lesson17")
    expect(page).to have_selector("h3", text: "Lesson 17: Jacob, Part 2")
  end

  it "navigates to Lesson 18 page" do
    click_link "Lesson 18: Joseph, Part 1"
    expect(current_path).to eq("/lessons/lesson18")
    expect(page).to have_selector("h3", text: "Lesson 18: Joseph, Part 1")
  end

  it "navigates to Lesson 19 page" do
    click_link "Lesson 19: Joseph, Part 2"
    expect(current_path).to eq("/lessons/lesson19")
    expect(page).to have_selector("h3", text: "Lesson 19: Joseph, Part 2")
  end

  it "navigates to Lesson 20 page" do
    click_link "Lesson 20: Next Steps"
    expect(current_path).to eq("/lessons/lesson20")
    expect(page).to have_selector("h3", text: "Lesson 20: Next Steps")
  end

  it "allows for moving between lessons with 'next' links" do
    click_link "Lesson 1: Introducing the Bible"
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson2")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson3")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson4")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson5")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson6")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson7")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson8")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson9")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson10")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson11")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson12")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson13")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson14")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson15")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson16")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson17")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson18")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson19")
    click_link "Next Lesson"
    expect(current_path).to eq("/lessons/lesson20")
    expect(page).to_not have_selector("nav.next-link>a", text: "Next Lesson")
    within "nav.breadcrumbs" do
      click_link "The Lessons"
      expect(current_path).to eq("/lessons")
    end
  end
end
