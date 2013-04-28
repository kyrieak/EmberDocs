class SessionsController < ApplicationController
  def new
  end
  
  def create
    member = Member.authenticate(params[:email], params[:password])
    if member
      session[:member_id] = member.id
      flash[:notice] => "Logged in!"
      redirect_to root_url
    else
      flash[:notice] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:member_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to root_url
  end

end
