class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_email
end
