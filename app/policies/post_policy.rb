class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end





  def new?
    if user.admin?
      true
    else
      false
    end
  end

  def create?
    if user.admin?
      true
    else
      false
    end
  end


  def edit?
    if user.admin?
      true
    else
      false
    end
  end

  def update?
    if user.admin?
      true
    else
      false
    end
  end


  def destroy?
    if user.admin?
      true
    else
      false
    end
  end

  # def create?
  #   return true
  # end

  # def admin?
  #   if record.user == user && user.admin?
  #     create?
  #   else
  #     root_path
  #   end
  # end


  # def update?
  #   record.user == user
  #   # - record: the restaurant passed to the `authorize` method in controller
  #   # - user:   the `current_user` signed in with Devise.
  # end

  # def destroy?
  #   record.user == user
  # end
end
