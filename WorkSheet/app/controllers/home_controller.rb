class HomeController < ApplicationController
  before_filter :reset
  def log_in
    unless request.get?
      name = params[:user][:username]
      keys = params[:user][:password]
      @user = User.find_by_username(name)
      if @user.class == NilClass
        redirect_to :controller => 'home', :action => 'log_in'
      elsif @user.password == keys
        @user.admin = true
        @user.save
        redirect_to :controller => 'sheets', :action => 'index'
      else
        redirect_to :controller => 'home', :action => 'log_in'
      end
    end
  end
end
