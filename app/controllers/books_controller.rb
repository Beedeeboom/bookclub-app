class BooksController < ApplicationController
  def new
    @authors = Author.all
    @genres = Genre.all
    @book = Book.new
  end
  def create
    @authors = Author.all
    @genres = Genre.all
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      flash[:alert] = @book.errors.full_messages.join()
      render "new"
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author_id, :genre_ids => [])
  end
end
