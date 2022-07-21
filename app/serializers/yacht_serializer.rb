class YachtSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :price, :image_url
end
