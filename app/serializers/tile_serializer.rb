class TileSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :board_id, :status_code, :status_description, :img_url
end
