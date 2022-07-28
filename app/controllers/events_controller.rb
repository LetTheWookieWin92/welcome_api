class EventsController < ApplicationController

    # Get all events
    def index
        @events = Event.all     
        render json: @events
    end

    # Create an event
    def create
        @event = Event.create(event_params)

        # If there are any errors in creating the event e.g. validation failure, return the errors
        if @event.errors.any? 
            render json: @event.error, status: :unprocessable_entity
        else
            render json: @event, status: 201 # Pass back successful event creation status
        end
    end

    # Defines the parameters that are required to be sent when creating an event
    private
    def event_params
        params.require(:event).permit(
            :name,
            :description,
            :date, 
            :presenter,
            :is_english,
            :is_domestic,
            :is_common
        )
    end

end
