class BoardSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :urls, :likes
end
