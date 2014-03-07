class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def edit
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    flash[:notice] = "Event '#{event.title}' removed."
    redirect_to user_events_path(current_user.id)
  end

  def create
    @user = current_user
    @event = Event.new({user_id: @user.id}.merge event_params)

    if @event.save
      flash[:notice] = "Event '#{@event.title}' created."
      redirect_to user_event_path(current_user.id, @event.id)
    else
      @errors = @event.errors.messages
      render 'new'
    end
  end

  def index
    
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :starts_at, :ends_at, :max_attendees, :description)
  end
end
