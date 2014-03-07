class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @events = @user.created_events
  end

  def get_events 
    events = {}
    current_user.created_events.each_with_index do |event, index|
      events[index] = event.to_json
    end
    events.to_json
  end
end
