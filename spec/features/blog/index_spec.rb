require 'rails_helper'

RSpec.describe 'Blog Index Page', type:feature do
  before(:each) do
    visit "/blog"
  end
  it 'can be navigated to' do
    expect(page.status_code).to eq(200)
    expect(page).to have_current_path("/blog")
  end

  it 'has a title' do
    within '#blogHeader' do
      expect(page).to have_text("Sai's Blog!")
    end
  end

  it 'has a section for blog previews' do
    expect(page).to have_selector('#postPreviews')
  end

  context "New blog post button" do
    it 'has a button to add a new blog post' do
     expect(page).to have_button("New Blog Post")
    end

    it 'will take a user to the new blog post page when clicked' do
      click_button("New Blog Post")
      expect(page).to have_current_path("/blog/new")
    end
  end
end