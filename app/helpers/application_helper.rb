module ApplicationHelper
  def check_icons(bool)
    bool ? "fi-check" : "fi-x"
  end

  def check_class(bool)
    bool ? "success" : "alert"
  end

  def age
    Date.new(1986, 11, 11).find_age
  end

  def link_ng_admin(key = "")
    "#{user_root_path}#/#{key}"
  end
end
