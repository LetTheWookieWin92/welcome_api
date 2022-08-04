class EventsController < ApplicationController
    
    # Runs the set event before running show, update or delete (see method comment below)
    before_action :set_event, only: [:show, :update, :destroy]

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
            # Pass back unsuccessful event create status
            render json: {error: "Event not created; missing required parameters"}, status: :unprocessable_entity
        else
            # Pass back successful event create status
            render json: @event, status: 201 
        end      

    end

    # Returns a specific event
    def show
        render json: @event
    end

    # Updates a specific event
    def update
        
        begin
            @event.update(event_params)
        rescue
            # Pass back unsuccessful event update status
            render json: {error: "Event could not be updated; missing required parameters"}, status: :unprocessable_entity
        else
            # Pass back successful event update status
            render json: @event, status: 201 
        end  
    end

    # Deletes a specific event
    def destroy
        
        @event.delete
        render status: 204
        
    end

    # Finds the desired event before running the show or update method
    def set_event
        begin
            @event = Event.find(params[:id])
        rescue
            render json: {error: "Event not found"}, status: 404
        end
        
    end

    # Defines the parameters that are permitted to be sent when creating an event
    private
    def event_params
        params.permit(
            :name,
            :description,
            :date, 
            :duration,
            :degree,
            :presenter,
            :is_english,
            :is_domestic,
            :is_common
        )
    end

end
