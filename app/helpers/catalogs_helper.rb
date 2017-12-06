module CatalogsHelper
  def getBusinessTypesActives
    business_types_actives = BusinessType.where(active: true).order(:name)
  end

  def getStatusActivesByType(status_type_id)
    status = Status.where(["active = true and status_type_id = ?", status_type_id])
  end
end
