module ApplicationHelper
  def navClass(controller)
    "current" if params[:controller] == controller
  end
end
