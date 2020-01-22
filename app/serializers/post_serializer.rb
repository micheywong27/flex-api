class PostSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :media_url, :content, :clap, :comment, :nutrition, :claps, :comments, :favorites

end
