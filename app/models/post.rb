class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :author, class_name: 'User'

  attribute :title, :string
  attribute :text, :text
  attribute :comments_counter, :integer, default: 0
  attribute :likes_counter, :integer, default: 0

  after_create :update_posts_counter
  after_destroy :update_posts_counter
  after_delete :update_posts_counter
end
