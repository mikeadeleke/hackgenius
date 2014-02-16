class TracksController < ApplicationController
  def index
    @tracks = Track.order(updated_at: :asc).limit(25)
  end
  
  def show
    @track = Track.find(params[:id])
    @annotation = Annotation.new
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track
    else
      render :new, notice: "Your track was not saved. Are you sure it was long enough?"
    end
  end
  
  private
  
  def track_params
    params.require(:track).permit(:title, :content, :verse1, :verse2, :verse3, :url)
  end
end
