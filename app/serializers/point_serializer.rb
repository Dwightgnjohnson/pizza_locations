class PointSerializer < ActiveModel::Serializer
  attributes :name, :city, :lat, :lng
end
