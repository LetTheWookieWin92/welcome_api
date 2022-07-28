class EventsController < ApplicationController

    # Get all events
    def index
        @events = Event.all     
        render json: @events
    end

    # Create an event
    def create

        # If there are any errors in creating the event e.g. missing params, return error, else return created event with success status
        begin
            @event = Event.create(event_params)
        rescue
            render status: :unprocessable_entity
        else
            render json: @event, status: 201 # Pass back successful event creation status
        end      

    end

    # Defines the parameters that are permitted to be sent when creating an event
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
