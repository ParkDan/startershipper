class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.title = params[:title]
    @event.caption = params[:caption]
    @event.date = params[:date]
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.timestamp = Time.now
    @event.user_id = params[:user_id]
    @event.group_id = params[:group_id]

    if @event.save
            redirect_to events_url
          else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.title = params[:title]
    @event.caption = params[:caption]
    @event.date = params[:date]
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.user_id = params[:user_id]
    @event.group_id = params[:group_id]

    if @event.save
            redirect_to events_url
          else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
        redirect_to events_url
      end
end
