class TagsController < ApplicationController
  
  def index
    session[:return_to] ||= request.referer
    @tags = Tag.all
  end
  
  def show
    session[:return_to] ||= request.referer
    @tag = Tag.find(params[:id])
  end
end
