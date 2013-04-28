class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def curr_member
    @curr_member ||= Member.find(session[:member_id]) if session[:member_id]
  end
end
