class EventsController < ApplicationController
  def create
    @event = Event.new(data: params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
end
