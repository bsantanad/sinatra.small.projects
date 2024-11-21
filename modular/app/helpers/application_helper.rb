# lets remember that helper instance variables are also available in the views.
module ApplicationHelper
  def title(value = nil)
    @title = value if value 
    @title  ? "Controller Demo - #{@title}" : "Controller Demo"
  end
end
