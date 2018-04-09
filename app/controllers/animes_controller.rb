class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    respond_to do |format|
      format.html
      format.xml { render :xml => @animes }
    end
  end

  def show
    @animes = Anime.where("name like ?", "%"+params[:name]+"%")
    respond_to do |format|
      format.html
      format.xml { render :xml => @animes }
    end
  end

end
