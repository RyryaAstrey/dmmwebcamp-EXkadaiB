class SearchesController < ApplicationController
  
  def search
    @range = params[:range]
    @word = params[:word]
    
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
  end
  
  def search_result
  end
end
