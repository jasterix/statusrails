class TileSerializer < ActiveModel::Serializer
  attributes :board_id, :status_code, :status_description, :img_url
  belongs_to :board
end
