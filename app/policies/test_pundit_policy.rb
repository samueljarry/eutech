class TestPunditPolicy < ApplicationPolicy

  def show?
    admin
  end

  def admin
    user.admin?
  end

end