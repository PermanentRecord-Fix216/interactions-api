class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :badge_num, :zip_code, :comment

  def type
    "interactions"
  end
end
