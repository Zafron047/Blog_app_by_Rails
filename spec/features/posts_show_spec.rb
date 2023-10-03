require 'rails_helper'

RSpec.feature 'Post Show', type: :feature do
  let(:user) { User.create(name: 'Tom', bio: 'Teacher from Mexico.') }
  let(:post) { Post.create(author: user, title: "Post Title", text: 'Post Text') }

  scenario "I can see the post's title" do
    visit user_post_path(post.author, post)

    expect(page).to have_selector('.PostTitle', text: "Title: Post Title")
  end
end
