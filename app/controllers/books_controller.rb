class BooksController < ApplicationController


  def index
    @book_items = Book.all
    @authors = Author.all
  end


  def librat_autori
    @autori = Author.find(params[:id])
    @autori_books = Book.autori(params[:id])
  end


  def new
    @book_item = Book.new
    @authors = Author.all
  end


  def create
    @book_item = Book.new(params.require(:book).permit(:title, :publisher, :number_of_pages, :date_of_publication, :author_id))

    respond_to do |format|
      if @book_item.save
        format.html { redirect_to books_path, notice: "Your book was published" }
      else
        format.html { render :new }
      end
    end
  end


  def edit
    @book_item = Book.find(params[:id])
    @authors = Author.all
  end


  def update
    @book_item = Book.find(params[:id])

    respond_to do |format|
      if @book_item.update(params.require(:book).permit(:title, :publisher, :number_of_pages, :date_of_publication, :author_id))
        format.html { redirect_to books_path, notice: "The book was successfully updated!" }
      else
        format.html { render :edit }
      end
    end
  end


  def show
    @book_item = Book.find(params[:id])
  end


  def destroy
    @book_item = Book.find(params[:id])

    @book_item.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was removed" }
    end
  end


  def new_author_book
    @author = Author.find(params[:id])
    @book_of_author = @author.books.build
  end


  def krijo_author_book
    @author = Author.find(params[:id])
    @book = @author.books.build
    @book.attributes = params.require(:book).permit(:title, :publisher, :number_of_pages, :date_of_publication)
    if @book.valid?
      @book.save
      redirect_to each_book_path(params[:id]), notice: "The book was successfully updated!"
    else
      redirect_to authors_url, notice: "Book was removed"
    end
  end

end



