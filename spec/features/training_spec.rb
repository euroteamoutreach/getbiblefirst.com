describe "Training page", type: :feature do

  it "displays the correct heading" do
    visit "/training"
    expect(page).to have_selector("h1", text: "You can be a Bible First coach.")
  end

  context "PART 1" do
    before do
      visit "/training"
    end

    it "navigates to Part 1, Video 1 page" do
      within "section.training-videos > #part-1" do
        click_link "Introduction"
        expect(current_path).to eq("/training/videos/part-1/video-1/")
      end
    end

    it "navigates to Part 1, Video 2 page" do
      within "section.training-videos > #part-1" do
        click_link "The Bible First Story"
        expect(current_path).to eq("/training/videos/part-1/video-2/")
      end
    end

    it "navigates to Part 1, Video 3 page" do
      within "section.training-videos > #part-1" do
        click_link "Course Overview"
        expect(current_path).to eq("/training/videos/part-1/video-3/")
      end
    end

    it "navigates to Part 1, Video 4 page" do
      within "section.training-videos > #part-1" do
        click_link "The Uniqueness of Genesis"
        expect(current_path).to eq("/training/videos/part-1/video-4/")
      end
    end

    it "navigates to Part 1, Video 5 page" do
      within "section.training-videos > #part-1" do
        click_link "The Bible First Way"
        expect(current_path).to eq("/training/videos/part-1/video-5/")
      end
    end
  end

  context "PART 2" do
    before do
      visit "/training"
    end

    it "navigates to Part 2, Video 1 page" do
      within "section.training-videos > #part-2" do
        click_link "The Bible First Core 10"
        expect(current_path).to eq("/training/videos/part-2/video-1/")
      end
    end

    it "navigates to Part 2, Video 2 page" do
      within "section.training-videos > #part-2" do
        click_link "Use the Sword"
        expect(current_path).to eq("/training/videos/part-2/video-2/")
      end
    end

    it "navigates to Part 2, Video 3 page" do
      within "section.training-videos > #part-2" do
        click_link "Audience First"
        expect(current_path).to eq("/training/videos/part-2/video-3/")
      end
    end

    it "navigates to Part 2, Video 4 page" do
      within "section.training-videos > #part-2" do
        click_link "Find the Numerous Few"
        expect(current_path).to eq("/training/videos/part-2/video-4/")
      end
    end

    it "navigates to Part 2, Video 5 page" do
      within "section.training-videos > #part-2" do
        click_link "Don't Block the Message"
        expect(current_path).to eq("/training/videos/part-2/video-5/")
      end
    end

    it "navigates to Part 2, Video 6 page" do
      within "section.training-videos > #part-2" do
        click_link "Education Before Transformation"
        expect(current_path).to eq("/training/videos/part-2/video-6/")
      end
    end

    it "navigates to Part 2, Video 7 page" do
      within "section.training-videos > #part-2" do
        click_link "Truth Understood Over Time"
        expect(current_path).to eq("/training/videos/part-2/video-7/")
      end
    end

    it "navigates to Part 2, Video 8 page" do
      within "section.training-videos > #part-2" do
        click_link "Stories Are Better"
        expect(current_path).to eq("/training/videos/part-2/video-8/")
      end
    end

    it "navigates to Part 2, Video 9 page" do
      within "section.training-videos > #part-2" do
        click_link "Write on the Blank Pages"
        expect(current_path).to eq("/training/videos/part-2/video-9/")
      end
    end

    it "navigates to Part 2, Video 10 page" do
      within "section.training-videos > #part-2" do
        click_link "Order is Essential"
        expect(current_path).to eq("/training/videos/part-2/video-10/")
      end
    end

    it "navigates to Part 2, Video 11 page" do
      within "section.training-videos > #part-2" do
        click_link "Friends are the Best Salesmen"
        expect(current_path).to eq("/training/videos/part-2/video-11/")
      end
    end
  end

  context "PART 3" do
    before do
      visit "/training"
    end

    it "navigates to Part 3, Video 1 page" do
      within "section.training-videos > #part-3" do
        click_link "Introduction to Strategy"
        expect(current_path).to eq("/training/videos/part-3/video-1/")
      end
    end

    it "navigates to Part 3, Video 2 page" do
      within "section.training-videos > #part-3" do
        click_link "Strategy in Evangelism"
        expect(current_path).to eq("/training/videos/part-3/video-2/")
      end
    end

    it "navigates to Part 3, Video 3 page" do
      within "section.training-videos > #part-3" do
        click_link "Strategy vs. Methodology"
        expect(current_path).to eq("/training/videos/part-3/video-3/")
      end
    end

    it "navigates to Part 3, Video 4 page" do
      within "section.training-videos > #part-3" do
        click_link "The Missing Link"
        expect(current_path).to eq("/training/videos/part-3/video-4/")
      end
    end

    it "navigates to Part 3, Video 5 page" do
      within "section.training-videos > #part-3" do
        click_link "The Four-Level Framework"
        expect(current_path).to eq("/training/videos/part-3/video-5/")
      end
    end
  end

  context "PART 4" do
    before do
      visit "/training"
    end

    it "navigates to Part 4, Video 1 page" do
      within "section.training-videos > #part-4" do
        click_link "General Overview"
        expect(current_path).to eq("/training/videos/part-4/video-1/")
      end
    end

    it "navigates to Part 4, Video 2 page" do
      within "section.training-videos > #part-4" do
        click_link "Materials"
        expect(current_path).to eq("/training/videos/part-4/video-2/")
      end
    end
  end

  context "PART 5" do
    before do
      visit "/training"
    end

    it "navigates to Part 5, Video 1 page" do
      within "section.training-videos > #part-5" do
        click_link "Tools for Finding Students"
        expect(current_path).to eq("/training/videos/part-5/video-1/")
      end
    end

    it "navigates to Part 5, Video 2 page" do
      within "section.training-videos > #part-5" do
        click_link "Large-Scale Literature Campaigns"
        expect(current_path).to eq("/training/videos/part-5/video-2/")
      end
    end

    it "navigates to Part 5, Video 3 page" do
      within "section.training-videos > #part-5" do
        click_link "What Kind of Literature Should You Use?"
        expect(current_path).to eq("/training/videos/part-5/video-3/")
      end
    end
  end

  context "PART 6" do
    before do
      visit "/training"
    end

    it "navigates to Part 6, Video 1 page" do
      within "section.training-videos > #part-6" do
        click_link "Enrollment"
        expect(current_path).to eq("/training/videos/part-6/video-1/")
      end
    end

    it "navigates to Part 6, Video 2 page" do
      within "section.training-videos > #part-6" do
        click_link "Grading"
        expect(current_path).to eq("/training/videos/part-6/video-2/")
      end
    end
  end

  context "PART 7" do
    before do
      visit "/training"
    end

    it "navigates to Part 7, Video 1 page" do
      within "section.training-videos > #part-7" do
        click_link "Using a Spreadsheet"
        expect(current_path).to eq("/training/videos/part-7/video-1/")
      end
    end

    it "navigates to Part 7, Video 2 page" do
      within "section.training-videos > #part-7" do
        click_link "Backup"
        expect(current_path).to eq("/training/videos/part-7/video-2/")
      end
    end

    it "navigates to Part 7, Video 3 page" do
      within "section.training-videos > #part-7" do
        click_link "CBC Admin"
        expect(current_path).to eq("/training/videos/part-7/video-3/")
      end
    end
  end

  context "moving between videos with 'next' link" do
    before do
      visit "/training"
    end

    it "allows for navigating to next video with 'next' link" do
      click_link "Introduction"
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-1/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-1/video-3/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-1/video-4/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-1/video-5/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-3/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-4/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-5/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-6/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-7/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-8/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-9/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-10/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-2/video-11/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-3/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-3/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-3/video-3/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-3/video-4/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-3/video-5/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-4/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-4/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-5/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-5/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-5/video-3/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-6/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-6/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-7/video-1/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-7/video-2/")
      click_link "Next Video"
      expect(current_path).to eq("/training/videos/part-7/video-3/")
      expect(page).to_not have_selector("nav.next-link>a", text: "Next Video")
      within "nav.breadcrumbs" do
        click_link "Training Videos"
        expect(current_path).to eq("/training")
      end
    end
  end
end
