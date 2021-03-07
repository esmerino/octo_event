class IssuesController < ApplicationController
  def events
    @event = Event.by_issue(params[:id])
    render json: @event, status: :ok
  end
end
