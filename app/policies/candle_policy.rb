class CandlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    @user.vendor?
  end

  def create?
    @user.vendor?
  end

  def edit?
    @user.vendor?
  end

  def update?
    @user.vendor?
  end

  def destroy?
    @user.vendor?
  end
end
