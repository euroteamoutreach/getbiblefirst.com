include CustomHelpers

describe CustomHelpers do
  describe "#full_title" do
    context "when no custom page title is provided" do
      it "provides only the base title" do
        title = nil
        expect(full_title(title)).to eq("Bible First - Introducing Christ through the book of Genesis.")
      end
    end

    context "when a custom title is provided" do
      it "displays the custom title and the base title separated by a pipe" do
        title = "Custom"
        expect(full_title(title)).to eq("Custom | Bible First - Introducing Christ through the book of Genesis.")
      end
    end
  end

  describe "#home_smart_path" do
    context "when on home page" do
      it "returns '#'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(home_smart_path(current_page.path)).to eq("#")
      end
    end

    context "when not on home page" do
      it "returns '/'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(home_smart_path(current_page.path)).to eq("/")
      end
    end
  end

  describe "#overview_smart_path" do
    context "when on home page" do
      it "returns the Overview path without a leading slash" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(overview_smart_path(current_page.path)).to eq("#overview")
      end
    end

    context "when not on home page" do
      it "returns the Overview path *with* a leading slash" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(overview_smart_path(current_page.path)).to eq("/#overview")
      end
    end
  end

  describe "#smart_robots" do
    context "when on contact thanks page" do
      it "returns 'noindex, nofollow'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("contact/thanks/")
        expect(smart_robots(current_page.path, "production")).to eq("noindex, nofollow")
      end
    end

    context "when on bulk order thanks page" do
      it "returns 'noindex, nofollow'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("purchase/thanks/")
        expect(smart_robots(current_page.path, "production")).to eq("noindex, nofollow")
      end
    end

    context "when on bulk order page" do
      it "returns 'noindex, nofollow'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("purchase/bulk-69c1d6a126.html")
        expect(smart_robots(current_page.path, "production")).to eq("noindex, nofollow")
      end
    end

    context "when not in production environment" do
      it "returns 'noindex, nofollow'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("contact")
        expect(smart_robots(current_page.path, "staging")).to eq("noindex, nofollow")
      end
    end

    context "when not on 'thanks' page" do
      it "returns 'index, follow'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("contact")
        expect(smart_robots(current_page.path, "production")).to eq("index, follow")
      end
    end
  end

  describe "#add_visible_class" do
    context "when not on index page" do
      it "returns ' is-visible'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(add_visible_class(current_page.path)).to eq(" is-visible")
      end
    end

    context "when on index page" do
      it "returns nil" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(add_visible_class(current_page.path)).to be_nil
      end
    end
  end
end
