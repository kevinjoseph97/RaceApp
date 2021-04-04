class LaptimesController < ApplicationController

 
    def new 
        @laptime = Laptime.new
        @tracks = Track.all
    end



    def create 
        @laptime = Laptime.create(laptime_params)
    
        redirect_to tracks_path
        
    end



    private 

    def laptime_params
        params.require(:laptime).permit(:track_id, :time)
    end



end
