class CommunityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    @user.has_role?:admin || @record.user = @user
  end

  def edit?
    update?
  end

  def destroy?
    @user.has_role?:admin
  end
end
