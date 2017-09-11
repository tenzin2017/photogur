class PicturesController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]

  def index
      time = Time.now - 1.month
      year = Time.current
      @pictures = Picture.all
      @most_recent_pictures = Picture.most_recent_five
      @created_before_1_month = Picture.created_before(time)
      @created_in_year = Picture.created_in_year(year)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
   @picture = Picture.new

   @picture.title = params[:picture][:title]
   @picture.artist = params[:picture][:artist]
   @picture.url = params[:picture][:url]

  if @picture.save
     #if the picture gets saved, generate a get request to "/pictures" (the index)
     redirect_to "/pictures"
   else
     #otherwise render new.html.erb
     render :new
  end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit

    end
  end
end
