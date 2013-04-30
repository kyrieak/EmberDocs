module SessionsHelper

  def logged_in?
    session[:uid].nil? == false
  end

  def current_member
    Member.find_by_uid(session[:uid])
  end
end
