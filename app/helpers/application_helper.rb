module ApplicationHelper
  def check_icons(bool)
    bool ? "fi-check" : "fi-x"
  end

  def check_class(bool)
    bool ? "success" : "alert"
  end
end
