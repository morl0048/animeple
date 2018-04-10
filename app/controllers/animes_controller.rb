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

end

#class SeasonsController < ApplicationController
#  def index
#    @seasons = if params[:term]
#      Season.where()
#  end
#end
