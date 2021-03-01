class ChefsController < ApplicationController
  def index
    @chefs = policy_scope(Chef)

    # if params[ :query ].present?
    #   @Chefs = User.search_by_first_name_and_last_name(params[ :query ])
    # else
    #   @Chefs = User.all
    # end
  end

  def top

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

  def new
    @chef = Chef.new
    authorize @chef
  end

  def show
    @chef = Chef.find(params[:id])
    authorize @chef
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine)
  end
end
