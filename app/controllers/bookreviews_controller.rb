class BookreviewsController < ApplicationController
  def index
    @bookreviews = Bookreview.all
  end

  def show
    @bookreview = Bookreview.find(params[:id])
  end

  def new
    @bookreview = Bookreview.new
    @title = params[:book]
  end

  def create
    @bookreview = Bookreview.new(bookreview_params)

    if @bookreview.save
      redirect_to @bookreview
    else
      render :new
    end
  end

  def edit
    @bookreview = Bookreview.find(params[:id])
  end

  def update
    @bookreview = Bookreview.find(params[:id])

    if @bookreview.update(bookreview_params)
      redirect_to @bookreview
    else
      render :edit
    end
  end

  def destroy
    @bookreview = Bookreview.find(params[:id])
    @bookreview.destroy
    
    redirect_to bookreviews_path
  end

  private
  def bookreview_params
    params.require(:bookreview).permit(:book, :body)
  end
end
