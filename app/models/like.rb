class Like < ApplicationRecord
  belongs_to :post, class_name: 'Post', foreign_key: :post_id
  belongs_to :user, class_name: 'User', foreign_key: :user_id

  def update_likes_counter
    post.update(likes_counter: post.likes.count)
  end
end
