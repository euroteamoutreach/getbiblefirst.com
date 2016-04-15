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

  def render_volume_title_for(volume)
    VOLUME_TITLES.fetch(volume.to_sym)
  end

  def render_lesson_title_for(lesson)
    LESSON_TITLES.fetch(lesson.to_sym)
  end

  VOLUME_TITLES = {
    volume1: "Volume 1: Lessons 1&mdash;3",
    volume2: "Volume 2: Lessons 4&mdash;6",
    volume3: "Volume 3: Lessons 7&mdash;10",
    volume4: "Volume 4: Lessons 11&mdash;13",
    volume5: "Volume 5: Lessons 14&mdash;17",
    volume6: "Volume 6: Lessons 18&mdash;20"
  }

  LESSON_TITLES = {
    lesson1: "Lesson 1: Introducing the Bible",
    lesson2: "Lesson 2: Who is God?",
    lesson3: "Lesson 3: God Created the Spirit Beings",
    lesson4: "Lesson 4: Creation, Part 1",
    lesson5: "Lesson 5: Creation, Part 2",
    lesson6: "Lesson 6: Adam and Eve",
    lesson7: "Lesson 7: The Fall",
    lesson8: "Lesson 8: The Curse and the Promised Deliverer",
    lesson9: "Lesson 9: Cain and Abel",
    lesson10: "Lesson 10: Noah and the Great Flood",
    lesson11: "Lesson 11: Abraham, Part 1",
    lesson12: "Lesson 12: Abraham, Part 2",
    lesson13: "Lesson 13: Sodom and Gomorrah",
    lesson14: "Lesson 14: Isaac",
    lesson15: "Lesson 15: Isaac and His Family",
    lesson16: "Lesson 16: Jacob, Part 1",
    lesson17: "Lesson 17: Jacob, Part 2",
    lesson18: "Lesson 18: Joseph, Part 1",
    lesson19: "Lesson 19: Joseph, Part 2",
    lesson20: "Lesson 20: Next Steps",
  }
end
