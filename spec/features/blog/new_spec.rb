require 'rails_helper'

RSpec.describe 'New Blog Post Page', type:feature do
  before(:each) do
    visit "/blog/new"
  end
  it 'can be navigated to' do
    expect(page.status_code).to eq(200)
    expect(page).to have_current_path("/blog/new")
  end
end