module Blog
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    mount API::Endpoints::Posts

    # get :status do
    #   { status: :ok }
    # end
  end
end
