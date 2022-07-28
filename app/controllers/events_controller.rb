class EventsController < ApplicationController

    def index
        @events = Event.all     # Get all events
        render json: @events
    end

end
