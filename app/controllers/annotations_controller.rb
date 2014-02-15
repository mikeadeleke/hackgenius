class AnnotationsController < ApplicationController

  def index
    @track = Track.find(params[:track_id])
    @annotations = Annotation.all
  end
  
  def create
    @track = Track.find(params[:track_id])
    @annotation = @track.annotations.build(annotation_params)
    @annotation.save
    redirect_to @track
  end

  def edit
    @track = Track.find(params[:track_id])
    @annotation = @track.annoations.find(params[:id])
   end 

  def update
    respond_to do |format|
      if @annotation.update(annotation_params)
        format.html { redirect_to @annotation, notice: 'Annotation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @annotation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @track = Track.find(params[:track_id])
    @annoation = @track.annotations.find(params[:id]) 
    @annotation.destroy
    redirect_to track(:id => @track.id)
  end

  private

  def annotation_params
    params.require(:annotation).permit(:body)
  end
end