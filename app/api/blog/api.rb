module Blog
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    mount Blog::V1::Posts
    mount Blog::V1::Auth
  end
end
