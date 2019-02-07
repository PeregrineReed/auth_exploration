class Sessions::LoginController < ApplicationController

  def index
    @user = User.new
  end

end
