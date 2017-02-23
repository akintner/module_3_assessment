class SearchController < ApplicationController
  def index
    @stores = Store.nearest_to_zip(params[:q])
  end
end