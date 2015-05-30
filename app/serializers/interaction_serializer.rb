class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :type, :officer_name, :officer_badge, :zip_code, :comment

  def type
    "interactions"
  end
end
