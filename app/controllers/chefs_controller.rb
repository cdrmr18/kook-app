class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def top

  end

  def index
    @chefs = policy_scope(Chef)

    # if params[ :query ].present?
    #   @Chefs = User.search_by_first_name_and_last_name(params[ :query ])
    # else
    #   @chefs = policy_scope(Chef)
    # end
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
      redirect_to chef_path(@chef)
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
