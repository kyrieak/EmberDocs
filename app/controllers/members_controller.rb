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
    
    @member = Member.new(:uid => cookies[:uid], :name => cookies[:name])
    if @member.save
      redirect_to root_path
    else
      render "new"
    end
  end

end
