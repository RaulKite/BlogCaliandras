def path_to(page_name)

  case page_name

    when /index/i
      root_path

    when /new article/i
      new_article_path

    else 
      raise "Can't find mapping from \"#{page_name}\" to a path."
  end

end
