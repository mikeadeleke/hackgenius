class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end
  
  def show
    @track = Track.find(params[:id])
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(track_params)
    if @track.save
      render :track
    else
      render :new
    end
  end
  
  private
  
  def track_params
    params.require(:tracks).permit(:title, :content)
  end
end
