class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user.chef == record.chef
  end
end

 # user = current_user
 # record = @recipe
