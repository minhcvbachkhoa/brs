class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :load_data

  def index
  end

  def show
    render template: "pages/#{params[:page]}"
  end

  private
  def load_data
    @feed_back =  FeedBack.new
    @books = Book.take(6)
    @reviews = Review.all
    @categories = Category.all
  end
end
