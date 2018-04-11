class AnimesController < ApplicationController

  def index
    @animes = if params[:term]
      Anime.order("name").where("name like ?", "%#{params[:term]}%")
    elsif params[:ord]
      Anime.order("name").all
    else
      Anime.all
    end
    respond_to do |format|
      format.html
      format.xml { render :xml => @animes }
    end
  end

  def show
    @anime = Anime.find(params[:id])
    if @anime.nil?
      @animes = Anime.all
      flash.now[:alert] = "This anime doesn't exist!"
      render "index"
    end
    @episodes = Episode.order("name").where("anime_id like ?", params[:id])
    respond_to do |format|
      format.html
      format.xml
    end
  end

end
