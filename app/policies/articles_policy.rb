class ArticlesPolicy < ApplicationPolicy

  def update?
    admin
  end

  def admin
    user.admin?
  end

end