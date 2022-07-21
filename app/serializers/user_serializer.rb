class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :username, :role, :image_url
end
