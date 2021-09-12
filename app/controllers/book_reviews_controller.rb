class BookReviewsController < ApplicationController
  def index
    @book_reviews = BookReview.where(user: current_user)
  end

  def show
    @book_review = BookReview.find(params[:id])
  end

  def new
    @book_review = BookReview.new
    @book_review.book_id = params[:book_id]
  end

  def create
    @book_review = BookReview.new(book_review_params)
    @book_review.user_id = current_user.id

    if @book_review.save
      redirect_to @book_review
    else
      render :new
    end
  end

  def edit
    @book_review = BookReview.find(params[:id])
  end

  def update
    @book_review = BookReview.find(params[:id])

    if @book_review.update(book_review_params)
      redirect_to @book_review
    else
      render :edit
    end
  end

  def destroy
    @book_review = BookReview.find(params[:id])
    @book_review.destroy
    
    redirect_to book_reviews_path
  end

  private
  def book_review_params
    params.require(:book_review).permit(:book_id, :body)
  end
end
