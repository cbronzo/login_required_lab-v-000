class SessionsController < ApplicationController
  
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render '/secrets/show'
    end
  end

  def destroy
  end
end