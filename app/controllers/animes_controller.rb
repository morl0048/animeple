class AnimesController < ApplicationController

  def index
    @animes = if params[:term]
      Anime.where("name like ?", "%#{params[:term]}%")
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
