module ApplicationHelper
  def active(path)
  if request.url==path
    return "active"
  else
    return "nil"
  end
end

end
