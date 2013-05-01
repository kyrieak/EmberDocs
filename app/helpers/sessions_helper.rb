module SessionsHelper

  def logged_in?
    cookies[:uid].nil? == false
  end

  def member_name
    cookies[:name]
  end
end
