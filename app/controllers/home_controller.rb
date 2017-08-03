class HomeController < ApplicationController

  def index
    if params[:search_state_id] && params[:search_municipality_id]
      @municipalities = Center.municipalities_by_state(params[:search_state_id])
      @photos = Photo.joins(:center).where("centers.state_id = ? and centers.municipality_id = ?", params[:search_state_id].to_i, params[:search_municipality_id].to_i)
    else
      @municipalities = []
      @photos = Photo.order(created_at: :desc).limit(6)
    end
  end

  def create
    photo = Photo.new(center_id: params[:center_id], file: params[:file])
    if photo.save
      flash[:info] = "Foto guardada"
    else
      flash[:alert] = "Es necesario el centro y la foto"
    end
    redirect_to root_path
  end

  def municipalities
    if params[:search_state_id]
      @municipalities = Center.municipalities_by_state(params[:search_state_id])
      @obj = "search_municipality_id"
    elsif params[:state_id]
      @municipalities = Center.municipalities_by_state(params[:state_id])
      @obj = "municipality_id"        
    else
      @municipalities = Center.municipalities
      @obj = ""
    end
  end

  def centers
    if params[:state_id] && params[:municipality_id]
      @centers = Center.centers(params[:state_id], params[:municipality_id])
    else
      @centers = []
    end
  end



end
