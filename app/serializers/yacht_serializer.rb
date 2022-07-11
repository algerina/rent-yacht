class YachtSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :price, :image, :image_url
end
