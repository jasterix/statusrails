class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :boards
  has_many :tiles, through: :boards

end
