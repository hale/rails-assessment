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

    def edit
        @book = Book.find(params[:id])
        @categories = Category.find(:all)
    end
    
    def search
        @books = Book.find(:all, :conditions => ["title LIKE ?", "%#{params[:key]}%"])
    end

    def update
    @book= Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => book.errors, :status => :unprocessable_entity }
      end
    end
  end


    def show
        @book = Book.find(params[:id])
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end
end
