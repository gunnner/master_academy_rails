module Blog
  class Endpoints::Posts < Grape::API
    helpers Blog::Helpers::Posts

    # before do
    #   error!('Not valid auth token', 401) unless headers['Auth'].eql?('token')
    # end
    # helpers do
    #   def declared_params
    #     declared(params, include_missing: false )
    #   end
    # end
    namespace :posts do

      get do
        Post.all
      end

      get ':id' do
        post = Post.find(params[:id])
        present post, with: Blog::Entities::Posts
        # post.attributes.except('created_at', 'updated_at')
      end

      params do
        requires :id,    type: Integer
        optional :title, type: String#, regexp: //
        optional :data, type: Hash do
          requires :test1, type: Integer
          optional :test2, type: String
        end
      end

      post do
        post = Post.find(declared_params[:id])
        post.update(declared_params)
      end

    end

  end
end

# class Blog::Endpoints::Posts < Grape::API
#   #index
#   # localhost:3000/api/posts
#   get 'posts' do
#     User.all
#   end
# end
