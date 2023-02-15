require 'rails_helper'

RSpec.describe 'Home Page', type:feature do
  before(:each) do
    visit "/"
  end
  it 'can be navigated to' do
    expect(page.status_code).to eq(200)
    expect(page).to have_current_path("/")
  end

  it 'has the correct title' do
    within '#welcomeHeader' do
      expect(page).to have_text("Hello, and welcome to Sai's Porfolio!") 
    end
  
  end
end