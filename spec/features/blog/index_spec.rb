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
end