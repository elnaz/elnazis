module ApplicationHelper
  def navClass(controller)
    "current" if params[:controller] == controller
  end
  
  def title(page_title)
    content_for (:title) { page_title }
  end
end
