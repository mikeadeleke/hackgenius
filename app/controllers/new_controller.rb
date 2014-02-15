class NewController < ApplicationController
  def index
    @recent_tracks = Track.order(updated_at: :desc)
  end
end
