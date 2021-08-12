class BooksController < ApplicationController
  def index
    @search = params[:search]
    @books = GoogleBooks.search(params[:q], {:count => 20})
  end

  def new
  end
end
