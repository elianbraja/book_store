class AuthorsController < ApplicationController

  def new
    @author_item = Author.new
    @author_item.books.build
    @author_item.build_private_token
  end


  def create
    @author_item = Author.new books_params

    respond_to do |format|
      if @author_item.save
        format.html { redirect_to books_path, notice: "Your book was published" }
      else
        format.html { render :new }
      end
    end
  end


  def books_params
    params.require(:author).permit(:name, :surname, books_attributes: [:title, :publisher, :number_of_pages, :date_of_publication], private_token_attributes: [:token])
  end





end
