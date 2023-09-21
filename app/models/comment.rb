class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  attribute :text, :text
  
  after_create :update_posts_counter
  after_destroy :update_posts_counter
  after_delete :update_posts_counter
end
