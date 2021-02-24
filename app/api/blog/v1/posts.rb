module Blog
  module V1
    class Posts < Grape::API

      helpers Blog::Helpers::Posts

      version 'v1', using: :path
      format :json
      prefix :api

      resources :posts do
        desc 'Return the list of posts'
        get do
          posts = Post.publish
          present posts, with: Blog::Entities::Index
        end

        desc 'Create a new post'
        params do
          requires :title, type: String
          requires :body, type: String
          requires :published_at, type: String
        end
        post do
          Post.create!(declared_params)
        end

        route_param :post_id do
          desc 'Return a specific post'
          get do
            post = Post.find(params[:id])
            present post, with: Blog::Entities::Index
          end

          desc 'Update a specific post'
          params do
            requires :title, type: String
            requires :body, type: String
            requires :published_at, type: String
          end
          patch do
            Post.find(params[:id]).update(declared_params)
          end
        end

        desc 'Delete a specific post'
        delete do
          post = Post.find(params[:id])
          post.destroy
        end
      end

      resources :images do
        desc 'Create an image'
        params do
          requires :image, type: Hash do
            requires :url, type: String, desc: 'New Image'
          end
        end
        post do
          @post = Post.find(params[:id])
          @image = Image.new(params[:url])
          @image = @post.images.create!(params[:url])
          @post.update(url: @image.url)
        end
      end
    end
  end
end
