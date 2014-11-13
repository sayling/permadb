class UsersController < ApplicationController

  def index
    @users = User.all
    @title = "Users in the DB"
  end

end
