class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @events = @user.created_events.to_json
  end
end
