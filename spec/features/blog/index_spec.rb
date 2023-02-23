require 'rails_helper'

RSpec.describe 'Blog Index Page', type:feature do
  before(:each) do
    visit "/blog"
  end
  it 'can be navigated to' do
    expect(page.status_code).to eq(200)
    expect(page).to have_current_path("/blog")
  end
end