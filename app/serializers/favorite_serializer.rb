class FavoriteSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :user_id, :post_id, :post

end
