module Blog
  module V1
    class Posts < Grape::API

      helpers Blog::Helpers::Posts

      namespace :posts do
        desc 'Return the list of posts'
        get do
          post = Post.published
          present post, with: Blog::Entities::Post
        end

        desc 'Create a new post'
        params do
          requires :title, type: String
          requires :body, type: String
          requires :user_id, type: Integer
          requires :images_attributes, type: Array do
            requires :url, type: String
          end
        end
        post do
          post = User.find(params[:user_id]).posts.create!(params)
          present post, with: Blog::Entities::Post
        end

        route_param :post_id do
          desc 'Return a specific post'
          get do
            post = Post.find(params[:post_id])
            present post, with: Blog::Entities::Post
          end

          params do
            requires :user_id
            optional :title, type: String
            optional :body, type: String
          end

          desc 'Update a specific post'
          patch do
            post = User.find(params[:user_id]).posts.find(params[:post_id])
            post.update(declared_params)
          end

          desc 'Delete a specific post'
          delete do
            User.find(params[:user_id]).posts.destroy(params[:post_id])
          end
        end
      end
    end
  end
end
