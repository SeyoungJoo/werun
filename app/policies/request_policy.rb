class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def destroy?
    record.receiver == user
  end

  def approve?
    record.receiver == user
  end

  def reject?
    record.receiver == user
  end
end
