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
      "#earthscape-link"
    else
      "/#earthscape-link"
    end
  end

  def home_smart_path(path)
    if !!(path =~ /index/)
      "#"
    else
      "/"
    end
  end

  def smart_robots(path, env)
    if !!(path =~ /thanks|69c1d6a126/) || env != "production"
      "noindex, nofollow"
    else
      "index, follow"
    end
  end

  def add_visible_class(path)
    unless !!(path =~ /index/)
      " is-visible"
    end
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

  def last_video?(video)
    video[:part] == "part-7" && video[:number] == "video-3"
  end

  def more_videos_in_part?(video)
    data.training_videos[video[:part]].length > video[:number].split("-")[1].to_i
  end

  def next_video_path_for(video)
    if last_video?(video)
      return
    elsif more_videos_in_part?(video)
      next_number = video[:number].split("-")[1].to_i + 1
      "/training/videos/#{video[:part]}/video-#{next_number}/"
    else
      next_part = video[:part].split("-")[1].to_i + 1
      "/training/videos/part-#{next_part}/video-1/"
    end
  end
end
