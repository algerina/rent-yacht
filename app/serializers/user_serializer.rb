class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :username, :role
end
