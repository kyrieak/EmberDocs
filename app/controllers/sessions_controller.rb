class SessionsController < ApplicationController

  
  
  def new
    @message = params[:message]
    # @info = session.to_s.gsub(/[\{\}\"]/, "")
  end
  
  def create
    auth = request.env["omniauth.auth"]

    # uid = auth["uid"]
    # logger.debug uid
    # member = Member.find_by_auth({:uid => auth["uid"]})
    cookies[:uid] = auth["uid"]
    redirect_to root_path
  end

  def destroy
    session[:uid] = nil
    flash[:notice] = "Logged out!"
    redirect_to log_in_url
  end

end
