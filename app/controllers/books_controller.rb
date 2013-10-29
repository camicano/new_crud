class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @author = Author.find(params[:author_id])

    @author.books << @book
    @words = @book.words

    @word = Word.new
  end

  def create
    @book = Book.create(params[:title])

    @author = Author.find(params[:author_id])

    author_path(@book.author_id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    author_path(@book.author_id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.update(params[:id], params[:title])    
    @author = Author.find(params[:author_id])

    author_path(@book.author_id)
  end
end
