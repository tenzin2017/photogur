class PicturesController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_picture, except: [:show, :index]

  def index
    time = Time.now - 1.month
    year = Time.current
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
    @created_before_1_month = Picture.created_before(time)
    @created_in_year = Picture.created_in_year(year)
  end

  def show
    load_picture
  end

  def new
    @picture = Picture.new
  end

  def create
   @picture = Picture.new

   @picture.title = params[:picture][:title]
   @picture.artist = params[:picture][:artist]
   @picture.url = params[:picture][:url]
   @picture.user_id = session[:user_id]

  if @picture.save
     #if the picture gets saved, generate a get request to "/pictures" (the index)
     redirect_to "/pictures"
   else
     #otherwise render new.html.erb
     render :new
  end
  end

  def destroy
    load_picture
    @picture.destroy
    redirect_to "/pictures"
  end

  def edit
    load_picture
  end

  def update
    load_picture

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit

    end
  end

  def load_picture
    @picture = Picture.find(params[:id])
  end

end
