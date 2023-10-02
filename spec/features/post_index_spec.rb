require 'rails_helper'

RSpec.feature 'Post Index', type: :feature do
  let(:user) { User.create(name: 'Tom', bio: 'Teacher from Mexico.') }
  let!(:post) { Post.create(author: user, title: "first post's title", text: 'first text') }
  let!(:comment1) { Comment.create(author: user, post:, text: 'hello Tom') }
  let!(:comment2) { Comment.create(author: user, post:, text: 'Thank You Tom') }
  let!(:comment3) { Comment.create(author: user, post:, text: 'Good afternoon Tom') }
  let!(:like1) { Like.create(user:, post:) }

  before do
    user.update(photo: 'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png')
  end

  scenario "see user's profile picture, username, number of posts and interactions" do
    visit user_posts_path(user)

    expect(page).to have_selector('img[src="https://www.kasandbox.org/programming-images/avatars/leaf-blue.png"]')
    expect(page).to have_content('Tom')
    expect(page).to have_content('Number of posts: 1')
    expect(page).to have_content('Comments: 3')
    expect(page).to have_content('Likes: 1')
  end
end
