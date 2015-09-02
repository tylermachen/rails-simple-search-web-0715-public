class SearchController < ApplicationController
  def index
    if word = Word.find_by(name: params[:keyword])
      redirect_to word
    else
      @results = Search.for(params[:keyword])
      @results = "No results matching that query." if @results.empty?
    end
  end
end
