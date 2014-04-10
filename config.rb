require 'date'

activate :directory_indexes
activate :neat
activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "layouts/blog"
  blog.tag_template = "blog/tag.html"
  blog.sources = "articles/{year}-{month}-{day}-{title}.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

configure :build do
end

helpers do
  def menu_item(path)
    properties = {:href => "/#{path}", :class => "item"}

    if current_page.path == path
      properties[:class] = "active item"
    end

    properties
  end

  def copyright_years
    "2010 - #{Date.today.year}"
  end
end
