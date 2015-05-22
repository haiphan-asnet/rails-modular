module Blog::ApplicationHelper
  def active(path)
    current_page?(path) ? 'active' : ''
  end
end
