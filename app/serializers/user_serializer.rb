class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :username, :role, :image, :image_url
end
