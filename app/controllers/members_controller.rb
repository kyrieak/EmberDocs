class MembersController < ApplicationController

  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Signed up!"
      redirect_to root_url
    else
      render "new"
    end
  end
end
