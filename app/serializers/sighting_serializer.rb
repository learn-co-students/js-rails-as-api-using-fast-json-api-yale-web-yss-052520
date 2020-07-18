class SightingSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :bird
  belongs_to :location
end
