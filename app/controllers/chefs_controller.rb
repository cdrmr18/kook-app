class ChefsController < ApplicationController
  def index
    @chefs = Chef.all

    # if params[ :query ].present?
    #   @Chefs = User.search_by_first_name_and_last_name(params[ :query ])
    # else
    #   @Chefs = User.all
    # end
  end

  def create
  end

  def new
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
