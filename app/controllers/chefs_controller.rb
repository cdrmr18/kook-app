class ChefsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
