class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, except: []


  def top
  end

  def index
    @chefs = policy_scope(Chef)

    if params[ :query ].present?
      @chefs = Chef.global_search(params[ :query ])
    else
      @chefs = policy_scope(Chef)
    end
  end

   def show
    @chef = Chef.find(params[:id])
    authorize @chef
  end

  def new
    @chef = Chef.new
    authorize @chef
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    authorize @chef

    if @chef.save
      redirect_to chef_dashboard_path(@chef)
    else
      render :new
    end
  end

  def destroy
    @chef = Chef.find(params[:id])
    authorize @chef
    @chef.destroy
    redirect_to  root_path
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine)
  end
end
