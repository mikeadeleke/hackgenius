class TracksController < ApplicationController
  def index
    @tracks = Track.order(updated_at: :asc).limit(25)
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
      redirect_to @track
    else
      render :new
    end
  end
  
  private
  
  def track_params
    params.require(:track).permit(:title, :content, :verse1, :verse2, :verse3)
  end
end
