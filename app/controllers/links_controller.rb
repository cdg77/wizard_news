class LinksController < ApplicationController
  def index
    @links = Link.all
    render :index
  end

  def show
    @link = Link.find(params[:id])
    render :show
  end

  def new
    @link = Link.new
    render :new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      render :new
    end
  end

  def edit
    @link = Link.find(params[:id])
    render :edit
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to links_path
    else
      render :edit
    end
  end


  # this is to handle potential malicious code
  private
  def link_params
    params.require(:link).permit(:title, :url, :votes)
  end
end
