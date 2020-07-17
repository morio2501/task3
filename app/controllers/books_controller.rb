class BooksController < ApplicationController

def create
	  @book = Book.new(book_params)
		if @book.save
  	   redirect_to book_path(@book.id), notice: 'Book was successfully updated.'
    else
      @books = Book.all
      render "index"
    end
end

def show
	@book = Book.new
	@book = Book.find(params[:id])
end

def index
	@book = Book.new
	@books = Book.all
end

def update
end
def destroy
end
def edit
end

 private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end