class SupplyPolicy< ApplicationPolicy


  def new?
    user.admin?
  end
  def update?
    record.try(:user) == user
  end

end
