class BooksController < ApplicationController
  def new
    @list = Book.new
  end
  
  def index
    @books = Book.all
  end
  
  def show
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end
  
  private
  def _params
    params.require(:book).permit(:title, :body)
  end
end
