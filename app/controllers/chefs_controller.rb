class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def create
  end

  def new
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
