class WordsController < ApplicationController
  def create
    @word = Word.create(params[:word])
    @book = Book.find(params[:book_id])

    @book.words << @word
    redirect_to author_book_path(@book.id)
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to author_book_path(@book.id)
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.update(params[:id], params[:word])
    redirect_to author_book_path(@book.id)
  end
end
