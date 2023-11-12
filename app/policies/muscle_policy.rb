class MusclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def create?
    @user.has_role?:admin
  end
  
  def new?
    create?
  end
  
  def update?
    @user.has_role?:admin
  end
  
  def edit?
    update?
  end
  
  def destroy?
    update?
  end
end
