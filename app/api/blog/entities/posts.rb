class Blog::Entities::Posts < Grape::Entity
	expose :id
	expose :title do |post|
		post.title.is_a?(String) ? '' : 'l'
	end
	expose :body, as: :post_body
end