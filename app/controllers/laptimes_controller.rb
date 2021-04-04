class LaptimesController < ApplicationController

 
    def new 
        @laptime = Laptime.new
        binding.pry
        @tracks = Track.all
    end



    def create 
        @laptime = Laptime.new(laptime_params)
        @laptime.save
        binding.pry
        redirect_to tracks_path
        
    end



    private 

    def laptime_params
        params.require(:laptime).permit(:track_id, :time)
    end



end
