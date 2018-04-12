class SupplyPolicy< ApplicationPolicy

  def update?
    record.try(:user) == user
  end

end
