class EpisodesController < ApplicationController

  def show
    @episode = Episode.find(params[:id])
    if @episode.nil?
      render "index"
    end
    @links = Link.order("typeLink").where("episode_id like ?", params[:id])
    respond_to do |format|
      format.html
      format.xml
    end
  end

end
