class TracksController < ApplicationController


    def index
        @tracks = Track.all
    end
    
    def new 
        @track = Track.new
        @track.laptimes.build
    end

    def create 
        @track = Track.new(track_params)
        binding.pry 
        if @track.save
        # binding.pry
            redirect_to track_path(@track)
        else
            @errors = @track.errors.full_messages
            render :new
        end

    end

    def show
        @track = Track.find_by(id: params[:id])
    end

    def edit 
        @track = Track.find_by(id: params[:id])
    end

    def update 
        @track = Track.find_by(id: params[:id])
        if @track.update(track_params)
            redirect_to track_path(@track)
        else
            @errors = @track.errors.full_messages
            render :edit
        end
    end
 
 
    def destroy
        @track = Track.find_by(id: params[:id])
        @track.delete
        redirect_to tracks_path
    end
 
 
    private 
 
    def track_params
        params.require(:track).permit(:name, laptimes_attributes: [:time])
    end
 end