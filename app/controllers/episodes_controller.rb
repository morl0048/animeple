class EpisodesController < ApplicationController

  def show
    @episode = Episode.find(params[:id])
    if @episode.nil?
      render "index"
    end
    @links = Link.order("typeLink").where("episode_id like ?", params[:id])

    @episodes = Episode.order("name").where("anime_id like ?", @episode.anime_id)

    @prev = @episodes.where("id < ?", @episode.id).last

    @next = @episodes.where("id > ?", @episode.id).first

    respond_to do |format|
      format.html
      format.xml
    end
  end

end
