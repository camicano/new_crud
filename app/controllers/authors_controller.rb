class AuthorsController < ApplicationController
  def index
    @authors = Author.all

    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])

    @books = @author.books

    @book = Book.new
  end

  def create
    @author = Author.create(params[:author])

    redirect_to root_path
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to root_path    
  end

  def edit
    @author = Author.find(params[:id])    
  end

  def update
    @author = Author.update(params[:id], params[:name])

    redirect_to root_path    
  end
end
