class BooksController < ApplicationController
  def index
    @search = params[:search]
    @books = GoogleBooks.search(params[:q], {:count => 24})
  end
end
