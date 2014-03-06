class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def edit
  end

  def destroy
  end

  def create
    @user = current_user
    @event = Event.new({user_id: @user.id}.merge event_params)

    if @event.save
      redirect_to @event
    else
      @errors = @event.errors.messages
      render 'new'
    end
  end

  def index
  end

  def show
    @events = current_user.created_events
  end


  private

  def event_params
    params.require(:event).permit(:title, :starts_at, :ends_at, :max_attendees, :description)
  end
end
