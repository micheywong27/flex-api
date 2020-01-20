class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :comment, :nutrition, :favorites, :claps
end
