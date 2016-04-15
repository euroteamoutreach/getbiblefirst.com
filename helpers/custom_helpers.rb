module CustomHelpers
  def full_title(page_title=nil)
    page_title ||= ""
    base_title = "Bible First"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def overview_smart_path(path)
    if !!(path =~ /index/)
      "#call-to-men"
    else
      "/#call-to-men"
    end
  end

  def home_smart_path(path)
    if !!(path =~ /index/)
      "#"
    else
      "/"
    end
  end

  def contact_text
    if !!(current_page.path =~ /faq/)
      "Didn&rsquo;t find your answer? Drop us a line!"
    else
      "Got a question about CMO? Drop us a line!"
    end
  end

  def add_visible_class
    unless !!(current_page.path =~ /index/)
      " is-visible"
    end
  end

  def page_description
    current_page.data.description || data.site.description
  end

  # https://robots.thoughtbot.com/organized-workflow-for-svg
  # https://gist.github.com/bitmanic/0047ef8d7eaec0bf31bb
  def inline_svg(filename, options = {})
    root = Middleman::Application.root
    file_path = "#{root}/source/images/#{filename}"
    if File.exists?(file_path)
      file = File.read(file_path).force_encoding("UTF-8")
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css "svg"
      if options[:class].present?
        svg["class"] = options[:class]
      end
      doc
    else
      "file not found: #{file_path}"
    end
  end
end
