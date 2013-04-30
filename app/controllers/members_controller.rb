class MembersController < ApplicationController

  
  
  def index

  end

  def show
    @member = Member.find(params[:id])
    @info = params
  end

  def new
    @member = Member.where(params[:member]).first ||= Member.new
  end
  
  def create    
    logger.debug(params)
    @member = Member.new(params[:member])
    if @member.save
      session[:uid] = @member.uid
      session[:name] = @member.name
      redirect_to root_path
    else
      render "new"
    end
  end

end
