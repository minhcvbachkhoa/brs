class ListBooksController < ApplicationController
  load_and_authorize_resource :user

  def index
    if params[:book_status]
      @books ||= @user.send(params[:book_status]).page(params[:page]).
        per Settings.per_page
      @title ||= params[:book_status]
    else
      @books ||= Book.list_books_with_author(params[:author]).page(params[:page]).
        per Settings.per_page
      @title ||= params[:author]
    end
  end
end
