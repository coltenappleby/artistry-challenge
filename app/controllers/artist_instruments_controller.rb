class ArtistInstrumentsController < ApplicationController

    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create 
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)
        @artist = Artist.find(params[:artist_id])
        redirect_to artist_path(@artist)
    end

    private

    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
