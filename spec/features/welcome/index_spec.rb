require 'rails_helper'

RSpec.describe 'Home Page', type:feature do
  it 'can be navigated to' do
    visit "/"
    expect(page).to have_content("Test Page")
  end
end