class DocsController < ApplicationController

  

  def index
    if logged_in?
      @docs = ["logged in? is true"]
    else
      @docs = ["logged in? is false"]
    end
  end

  private
  
  def logged_in?
    !logged_out?
  end

  def logged_out?
    cookies[:uid].nil?
  end
end
