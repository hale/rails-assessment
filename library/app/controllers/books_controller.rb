class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(params[:book])
        if @book.save
            redirect_to books_path
        end
    end
end
