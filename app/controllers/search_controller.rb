class SearchController < ApplicationController
  def index
    @members = SearchResults.new.members(params[:house])
  end
end
