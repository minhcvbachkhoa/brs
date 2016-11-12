class BooksController < ApplicationController
  load_and_authorize_resource

  def show
    @books = Book.all
    @supports = Supports::Book.new @book
  end
end
