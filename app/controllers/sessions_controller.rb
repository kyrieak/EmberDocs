class SessionsController < ApplicationController
  
  def new
    @message = params[:message]
    # @info = session.to_s.gsub(/[\{\}\"]/, "")
  end
  
  def create
    auth = request.env["omniauth.auth"]
    member = Member.where(:uid => auth["uid"])
    cookies[:uid] = auth["uid"]
    # puts "--------------------------------------------------"
    # puts auth["extra"]
    # puts "--------------------------------------------------"
    # puts auth["info"]
    # puts "--------------------------------------------------"
    # puts auth["extra"]["info"]
    if member.empty?
      cookies[:name] = get_name(auth["info"])
      redirect_to save_member_path
    else
      redirect_to root_path
    end
  end

  def destroy
    cookies.delete(:uid)
    cookies.delete(:name)
    flash[:notice] = "Logged out!"
    redirect_to log_in_url
  end

  private

  def get_name(info)
    name = info["nickname"]
    name = info["name"] if name.nil?
    name.nil? ? "Doc" : name
  end

end
