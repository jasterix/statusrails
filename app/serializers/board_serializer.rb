class BoardSerializer < ActiveModel::Serializer
  attributes :name, :urls, :likes
  has_many :tiles

end
