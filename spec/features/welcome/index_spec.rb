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

  context "Professional Background section" do

    it 'has a section for my professional background text' do
      expect(page).to have_selector("section#professionalBackground")
    end

    it 'has a title in this section: PB' do
      within '#professionalBackground' do
        expect(page).to have_selector("h3#pb-Title")
        expect(page).to have_text("My Professional Background")
      end
    end

    it 'has a section for me to write about my professional background' do
      within '#professionalBackground' do
        expect(page).to have_selector("p#professionalBackgroundText")
        expect(page).to have_text("Temporary Test Text -PB")
        
      end
    end
  end
end