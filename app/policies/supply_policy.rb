class SupplyPolicy< ApplicationPolicy


  def new?
    user.admin?
  end
  
  def edit?
    record.try(:user) == user
  end

end
