class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :comment, :nutrition, :claps, :comments, :favorites
end
