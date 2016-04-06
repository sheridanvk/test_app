class UsersController < ApplicationController
  def new
  end

  # def index
  #   @users = User.all
  # end

  def show
    @goodreads_client = Goodreads::Client.new(api_key: ENV['GOODREADS_API_KEY'],api_secret: ENV['GOODREADS_API_SECRET'])
    @goodreads_user = params[:id]
    @bookshelf = @goodreads_client.shelf(@goodreads_user, 'read')
    @book_titles = []
    @bookshelf.books.each do |item|
      @book_titles.push(item.fetch("book").fetch("title"))
    end
  end

end
